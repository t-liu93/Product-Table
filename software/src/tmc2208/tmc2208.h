#pragma once

#include <stdint.h>

#pragma pack(push, 1)
typedef struct uartData
{
    uartData()
        : sync(0b1010)
        , reserved(0)
        , slaveAddr(0)
        , registerAddr(0)
        , rw(0)
        , dataByte4(0)
        , dataByte3(0)
        , dataByte2(0)
        , dataByte1(0)
        , crc(0)
    {
    }
    uint8_t sync:4;
    uint8_t reserved:4;
    uint8_t slaveAddr;
    uint8_t registerAddr:7;
    uint8_t rw:1;
    uint8_t dataByte4;
    uint8_t dataByte3;
    uint8_t dataByte2;
    uint8_t dataByte1;
    uint8_t crc;
} uartData_t;
#pragma pack(pop)

static_assert(sizeof(uartData_t) == 8, "uart diagram length incorrect!");

class TMC2208
{
public:
    TMC2208(){};

    void send();
private:
    void calculateCRC();
    uartData_t m_txDiagram;
    uartData_t m_rxDiagram;
};
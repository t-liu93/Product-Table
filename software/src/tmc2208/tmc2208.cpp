#include "tmc2208.h"

#include <Arduino.h>

constexpr uint8_t uartLength = sizeof(uartData_t);

void TMC2208::calculateCRC()
{
    int i, j;
    uint8_t *data = reinterpret_cast<uint8_t*>(&m_txDiagram);
    uint8_t *crc = data + (uartLength - 1); // CRC located in last byte of message
    uint8_t currentByte;
    *crc = 0;
    for (i = 0; i < (uartLength-1); i++)
    { // Execute for all bytes of a message
        currentByte = data[i]; // Retrieve a byte to be sent from Array
        for (j = 0; j < 8; j++)
        {
            if ((*crc >> 7) ^ (currentByte&0x01)) // update CRC based result of XOR operation
            {
                *crc = (*crc << 1) ^ 0x07;
            }
            else
            {
                *crc = (*crc << 1);
            }
            currentByte = currentByte >> 1;
        } // for CRC bit
    } // for message byte
}

void TMC2208::send()
{
    m_txDiagram.dataByte4 = 8;
    calculateCRC();
    auto *data = reinterpret_cast<uint64_t*>(&m_txDiagram);
    uint32_t low = *data % 0xFFFFFFFF;
    uint32_t high = (*data >> 32) % 0xFFFFFFFF;
    Serial.print(low, BIN);
    Serial.println(high, BIN);
}
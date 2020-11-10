/**
 * Graphic class for this product table
 */
#pragma once

#include "../U8g2_Arduino/U8g2lib.h"

class Graphic
{
public:
    Graphic(uint8_t sda, uint8_t scl);

    void drawSpeedMeter(uint16_t percentage);
    void clear();
    void flush();

    U8G2_SH1106_128X64_NONAME_F_SW_I2C m_display;
private:
    uint8_t m_pinSDA;
    uint8_t m_pinSCL;
    const uint8_t *m_font;
};
#include "graphic.h"

Graphic::Graphic(uint8_t sda, uint8_t scl)
    : m_display(U8G2_SH1106_128X64_NONAME_F_SW_I2C(U8G2_R0, scl, sda))
    , m_pinSDA(sda)
    , m_pinSCL(scl)
    , m_font(u8g2_font_wqy12_t_gb2312b)
{
    m_display.begin();
    m_display.clearBuffer();
    m_display.setFont(u8g2_font_wqy12_t_gb2312b);
}

void Graphic::clear()
{
    m_display.clearBuffer();
}

void Graphic::flush()
{
    m_display.sendBuffer();
}

void Graphic::drawSpeedMeter(uint16_t percentage)
{
    String text;
    text = String(percentage) + "%";
    m_display.setFont(u8g_font_ncenB18);
    // m_display.drawCircle(64, 80, 48);
    // m_display.drawStr(0, 64, "MIN");
    // m_display.drawStr(128-m_display.getStrWidth("MAX"), 64, "MAX");
    // m_display.drawLine(64, 80, )
    m_display.drawStr((128 - m_display.getStrWidth(text.c_str())) / 2, 32, text.c_str());
}
#include <ESP8266WiFi.h>
#include <cmath>
#include <Ticker.h>
#include <atomic>

#include "esp8266ota.h"
#include "esp8266timer.h"
#include "graphic.h"
// #include "esp8266-a4988.h"

Esp8266OTA *updater = nullptr;
Esp8266Timer *millTimer = nullptr;
// Esp8266A4988 *motor = nullptr;
Graphic *display = nullptr;
unsigned long prvTime;

constexpr uint8_t PIN_MOTOR_DIR = 2;
constexpr uint8_t PIN_MOTOR_STEP = 0;
constexpr uint8_t PIN_SDA = 4;
constexpr uint8_t PIN_SCL = 5;
constexpr uint8_t PIN_ENCODER_DT = 12;
constexpr uint8_t PIN_ENCODER_CL = 13;
constexpr uint8_t PIN_ENCODER_SW = 14;
// constexpr uint8_t PIN_MOTOR_MODE_0 = 14;
// constexpr uint8_t PIN_MOTOR_MODE_1 = 15;
// constexpr uint8_t PIN_MOTOR_MODE_2 = 16;

volatile int lastDT;
volatile uint32_t timerTick = 5000;
volatile bool positive = true;
void ICACHE_RAM_ATTR onTime() {
    // motor->step();
}

void ICACHE_RAM_ATTR dt()
{
    volatile int dtNew = digitalRead(PIN_ENCODER_DT);
    if (dtNew != lastDT)
    {
        if (digitalRead(PIN_ENCODER_CL) != dtNew)
        {
            // motor->incrementRpm();
            // motor->decreaseRpm();
            // timer1_write(motor->getTickPerStep());
        }
        else
        {
            // motor->decreaseRpm();
            // motor->incrementRpm();
            // timer1_write(motor->getTickPerStep());
        }
        lastDT = dtNew;
    }
}

void ICACHE_RAM_ATTR clk()
{

}

volatile std::atomic<uint32_t> rpm;

ADC_MODE(ADC_VCC);

void setup()
{
    Serial.begin(115200);
    timer1_attachInterrupt(onTime); // Add ISR Function
    timer1_enable(TIM_DIV16, TIM_EDGE, TIM_LOOP);
    attachInterrupt(PIN_ENCODER_DT, dt, CHANGE);
    updater = new Esp8266OTA("esp", "password", timer1_detachInterrupt);
    millTimer = new Esp8266TimerMill();
    // motor = new Esp8266A4988(200, STEP_SIZE_SIXTEENTH, DIR_CLOCKWISE, 5, PIN_MOTOR_STEP, PIN_MOTOR_DIR, 20);
    // motor->setRpm(0);
    millTimer->tick();
    prvTime = millTimer->getCurTime();
    display = new Graphic(PIN_SDA, PIN_SCL);
    pinMode(PIN_MOTOR_DIR, OUTPUT);
    pinMode(PIN_MOTOR_STEP, OUTPUT);
    pinMode(PIN_ENCODER_CL, INPUT);
    pinMode(PIN_ENCODER_DT, INPUT);
    // timerTick = motor->getTickPerStep();
    timer1_write(timerTick);
    // motor->setCurrentTickPerStep(timerTick);
    lastDT = digitalRead(PIN_ENCODER_DT);
}
static uint16_t line = 0;
void loop()
{
    updater->handle();
    millTimer->tick();
    if (millTimer->timeElapsed(prvTime, 100))
    {
        display->clear();
        // display->drawSpeedMeter(motor->getRpm() * 100 / 20);
        display->m_display.drawStr(30, 50, String(timerTick).c_str());
        display->flush();
        // display->clearBuffer();
        // display->drawStr(30, 30, String(motor->getRpm()).c_str());
        // display->drawStr(30, 50, String(timerTick).c_str());
        // display->sendBuffer();
    }
    // if (timerTick < motor->getTickPerStep())
    // {
    //     timerTick += (motor->getTickPerStep() - timerTick) > 10 ? (motor->getTickPerStep() - timerTick) / 10 : 1;
    //     motor->setCurrentTickPerStep(timerTick);
    //     timer1_write(timerTick);
    // }
    // else if (timerTick > motor->getTickPerStep())
    // {
    //     timerTick -= (timerTick - motor->getTickPerStep()) > 10 ? (timerTick - motor->getTickPerStep()) / 10 : 1;
    //     motor->setCurrentTickPerStep(timerTick);
    //     timer1_write(timerTick);
    // }
}

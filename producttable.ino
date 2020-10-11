#include <ESP8266WiFi.h>
#include <cmath>

#include "esp8266ota.h"
#include "oled.h"
#include "timer.h"

Esp8266OTA *updater;
Esp8266Timer *millTimer;
unsigned long prvTime;

void setup()
{
    Serial.begin(115200);
    updater = new Esp8266OTA("esp", "password");
    millTimer = new Esp8266TimerMill();
    millTimer->tick();
    prvTime = millTimer->getCurTime();
}

void loop()
{
    updater->handle();
    millTimer->tick();
    if (millTimer->timeElapsed(prvTime, 1000))
    {
        prvTime = millTimer->getCurTime();
    }

}

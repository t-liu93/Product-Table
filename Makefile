PROJECT_DIR = $(shell pwd)
ARDUINO_HOME = $(PROJECT_DIR)/extern/Arduino
BUILD_OUT = $(PROJECT_DIR)/build
SERIAL_PORT = /dev/ttyS6
GLOBAL_USER_LIBDIR = $(PROJECT_DIR)/extern
OTA_IP = 10.238.75.3
OTA_PORT = 8266
OTA_AUTH = password

USER_LIBS += esp8266-ota arduino-lib-oled esp8266-timer esp8266-oled-sh1106

include extern/Esp8266-Arduino-Makefile/espXArduino.mk

prepare:
	-git submodule update --init --recursive
	-cd $(ARDUINO_HOME)/tools && ./get.py

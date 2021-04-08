---
title: "Extreme Power-Save Mode: ESP8266 Powered ON After External Interrupt"
date: 2018-01-22T00:00:00-05:00
tags: ['ESP8266', 'power save', 'battery', 'IoT', 'MQTT', 'WiFi']
categories: ['iot']
---
{{<youtube pPd362tRx5o>}}

#

Have you ever wondered how to turn on ESP8266 using external interrupt? Build a battery powered amazon dash button or a 18650 lipo powered door bell using ESP8266 without putting the device in deep sleep? Here is your answer.

## Idea

1. Keep ESP8266 on **OFF** mode as default
2. External 3.3V signal (can be short or long) arrives and turns **ON** ESP8266
3. ESP8266 wakes up and keeps itself awake until a task is perfomed
4. Send MQTT data to server
5. Put ESP8266 back to power **OFF** state

## Implementation

1. RST pin is always HIGH/3.3V using 10k resistor
2. ESP8266 is in **OFF** state, GPIO0 is low
3. 3.3V signal arrives externally, GPIO0 and CH_PD are high, turn **ON** ESP8266
4. First thing ESP8266 does is turns GPIO0 to high, which means CH_PD remain high. So ESP8266 remains **ON** until GPIO0 is high
5. GPIO12 is used to read value of external interupt
6. If there is 3.3V external interrupt, GPIO is high and a MQTT message is sent as “Signal Received” or “ON” and keep ESP8266 **ON** until 0V signal is received.
7. If there is 0V external interrupt, GPIO0 goes low and MQTT message is sent as “Signal Vanished” or “OFF” and turns **OFF** ESP8266

## Software

This project is built using ideas at http://www.esp8266.com/viewtopic.php?f=11&t=4458

[Github: debsahu/ESP_External_Interrupt](https://github.com/debsahu/ESP_External_Interrupt)

## Build

![Build](https://github.com/debsahu/ESP_External_Interrupt/raw/master/Build.png)
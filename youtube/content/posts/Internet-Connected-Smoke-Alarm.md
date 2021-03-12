---
title: Internet Connected Smoke Alarm
date: 2018-01-23T00:00:00-05:00
tags: ['ESP8266', 'power save', 'battery', 'IoT', 'MQTT', 'WiFi', 'Smoke Alarm', 'sensor']
---

{{<youtube rgAuyPvZLB4>}}

#

Have you wondered how to build a internet connected smoke alarm using ESP8266 and a cheap [Kidde RF-SM-DC](https://amzn.to/2N8SiGn)?

Overall idea is to detect smoke alarm signals and send MQTT message. Home Assistant reads the MQTT message and sends out notifications that can be used to notify your local fire station.

ESP8266 sends a MQTT message until the smoke alarm is beeping.

## Software

Refer to https://github.com/debsahu/ESP_External_Interrupt to build the ESP8266 part of the internet connected smoke alarm.

{{<youtube pPd362tRx5o>}}

&nbsp;

[Github: debsahu/ESP_External_Interrupt](https://github.com/debsahu/ESP_External_Interrupt)

## Hardware

Overall idea is to detect smoke alarm signals and send MQTT message. Home Assistant reads the MQTT message and sends out notifications that can be used to notify your local fire station.

![Overall](https://github.com/debsahu/Internet_Fire_Alarm/raw/master/Overview.png)

We will be hacking into [Kidde RF-SM-DC](https://amzn.to/2N8SiGn)

![KiddeRFSMDC](https://github.com/debsahu/Internet_Fire_Alarm/raw/master/Kidde_overall.png)

Zoomed Kidde [RF-SM-DC](https://amzn.to/2N8SiGn)'s location of 3.3V signal 

![KiddeRFSMDCZoom](https://github.com/debsahu/Internet_Fire_Alarm/raw/master/Kidde_zoom.png)
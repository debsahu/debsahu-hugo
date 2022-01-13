---
title: "Using Gestures to Control Lights on Home-Assistant"
date: 2018-07-21T00:00:00-05:00
tags: ["ESP8266", "ESP32", "Rest API", "Home Assistant", "IoT", "sensor", 'debashish sahu']
categories: ['iot']
---

{{<youtube HkZQ4bvZ3uo>}}

#

Getting one's hands on APDS9960 is very easy, that can be used to detect hand gestures. Here we use this sensor to control lights on Home Assistant based on a gesture observed on sensor.

## Software

### Libraries used:

1. HARestAPI [GitHub: debsahu/HARestAPI](https://github.com/debsahu/HARestAPI)
2. APDS9960 [GitHub: SteveQuinn1/SparkFun_APDS-9960_Sensor_Arduino_Library](https://github.com/SteveQuinn1/SparkFun_APDS-9960_Sensor_Arduino_Library)
3. SSD1306 OLED I2C [GitHub: ThingPulse/esp8266-oled-ssd1306](https://github.com/ThingPulse/esp8266-oled-ssd1306)

{{<gist debsahu bae29c78442a82fd4ae2de2296a1783c>}}
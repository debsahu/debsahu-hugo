---
title: "Sending sensor data from ESP32 to InfluxDB | Local access - time-series database"
date: 2021-03-15T10:00:00-04:00
tags: ["ESP32", "WiFi", "WPA2-Enterprise", "IoT", "lolin D32","influxdb","big data", "grafana", 'debashish sahu']
categories: ['iot']
---

{{<youtube Jr3KbuwHPgw>}}

#

Instead of sending data to services in the cloud, here we send sensor data to local InfluxDB database. Grafana is used to read data from InfluxDB and alert thresholds are set to send reactive alerts.

### InfluxDB

Download and Installation: [official docs](https://portal.influxdata.com/downloads/)

### Docker

Download and Installation: [official docs](https://docs.docker.com/get-docker/)

### [ESP32 connecting to WPA2-Enterprise](https://github.com/debsahu/Esp32_EduWiFi)

{{<youtube bABHeMea-P0>}}

## Hardware

- [ESP32 TTGo T-Energy](https://amzn.to/30Yj3AV)
- [SSD1306 OLED display](https://amzn.to/30LYuHy)
- [BME280 sensor](https://amzn.to/2NiFvkM)

![schematic](/room_sensor_schematic.png)

## Software

### Dependencies

Listed below are the dpendencies used by Arduino IDE, but use **[PlatformIO](https://platformio.org/)** instead!

| Library                   | Link                                                            | Use                 |
|---------------------------|-----------------------------------------------------------------|---------------------|
|ESP8266 Influxdb           |https://github.com/tobiasschuerg/InfluxDB-Client-for-Arduino     |http comm restapi    |
|Adafruit BME280 Library    |https://github.com/adafruit/Adafruit_BME280_Library              |sensor               |

#

{{<gist debsahu 77fb50a36c0d48a39db3937885990f0c>}}
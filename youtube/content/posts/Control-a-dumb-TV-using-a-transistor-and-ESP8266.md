---
title: "Control a \"Dumb\" TV Using a Transistor and ESP8266"
date: 2019-01-14T00:00:00-05:00
tags: ["ESP8266", "ESP32", "2n2222", "switch", "IoT", "TV", "smart", "hacking"]
categories: ['iot','hack']
---

{{<youtube MmY-NLU-UN0>}}

#

The goal here is to control a "dumb" TV using virtual assistants via Home Assistant. We tap into the push button of the TV and use a transistor along with ESP8266 to mimic a button press.

## [GitHub: debsahu/PegasusTV](https://github.com/debsahu/PegasusTV)

### Goal:

- Control a "dumb" TV using virtual assistants via Home Assistant

### Features:

- Uses D2 to control 2N2222 transistor
- Control using Web and MQTT API
- Completely Async
- WiFiManager Captive Portal to get WiFi credentials (Compile with `-DUSE_EADNS` for ESP8266)
- Connect **PIN_CTRL** pin to base of 2N2222, collector to Probe and emitter to GND

### Hardware

![Hardware Setup](https://github.com/debsahu/PegasusTV/raw/master/hardware.png)

### Software Overview

#### Libraries Needed

[platformio.ini](https://github.com/debsahu/PegasusTV/blob/master/platformio.ini) is included, use [PlatformIO](https://platformio.org/platformio-ide) and it will take care of installing the following libraries.

| Library                   | Link                                                       |
|---------------------------|------------------------------------------------------------|
|ESPAsyncUDP                |https://github.com/me-no-dev/ESPAsyncUDP                    |
|ESPAsyncTCP                |https://github.com/me-no-dev/ESPAsyncTCP                    |
|ESPAsyncWiFiManager        |https://github.com/alanswx/ESPAsyncWiFiManager              |
|ESPAsyncDNSServer          |https://github.com/devyte/ESPAsyncDNSServer                 |
|ESP Async WebServer        |https://github.com/me-no-dev/ESPAsyncWebServer              |
|AsyncMqttClient            |https://github.com/marvinroger/async-mqtt-client            |


![Software Setup](https://github.com/debsahu/PegasusTV/raw/master/software.png)
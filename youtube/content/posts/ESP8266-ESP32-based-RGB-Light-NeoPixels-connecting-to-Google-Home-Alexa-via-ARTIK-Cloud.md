---
title: "ESP8266/ESP32 Based RGB Light (NeoPixels) Connecting to Google Home & Alexa via ARTIK Cloud"
date: 2019-02-09T00:00:00-05:00
tags: ["ESP8266", "ESP32", "MQTT", "IoT", "RGB", "LED", "NeoPixel"]
categories: ['iot']
---

{{<youtube baNO_8L5-RY>}}

#

# ⚠️ ⚠️ ⚠️ ARTIK Cloud has been depcreciated by Samsung ⚠️ ⚠️ ⚠️

Here we create an ESP8266/32 based device that emulates a RGB LED light using NeoPixels, which connects to ATRIK cloud. ARTIK cloud connects to smart home assistants like Google Home, Amazon Alexa, etc.

Connecting to Samsung ARTIK Cloud https://my.artik.cloud/

## [GitHub: debsahu/ARTIKCloud](https://github.com/debsahu/ARTIKCloud)

An application made for ESP8266 to comunicate with ARTIK Cloud
- Connects to ARTIK Cloud via MQTT SSL port 8883
- ARTIK Cloud is connected to all assistant platforms, integration is seamless
- Compiles on ESP8266-arduino core v2.4.2, v2.5.0-beta3, git version

## ARTIK Cloud Instructions

### [ARTIK Cloud Developer](https://developer.artik.cloud)

1. Create a **Device Type**

- Click on **Device Type**
- Add a new device **+ New Device Type**
![1-device-type-create](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step1.png)

2. Provide a **Name** for this device type

- Provide a **Device Display Name**
- Add an unique name: **com.user.devicetype**
![2-name-device-type](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step2.png)

3. Create/Upload a **Manifest**

![3-create-manifest](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step3.png)

- Use the [manifest provided for RGB lights](https://github.com/debsahu/ARTIKCloud/blob/master/My_ARTIK_Cloud/artikcloud-manifest.json)
![4-upload-manifest](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step4.png)

4. Activate **Manifest**

![5-activate-manifest](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step5.png)

### [ARTIK My Cloud](https://my.artik.cloud)

1. Create an end-product **"Device"**

- Click on "Devices" -> "+Add Another Device..." -> Select **Device Display Name**
- Provide a **YouTube Lights** << this will show up on your assistants
- Click on **Add Device**

![6-end-product-name](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step6.png)

2. Generate a **TOKEN**

- Click on **Generate Device Token...**

![7-device-token](https://github.com/debsahu/ARTIKCloud/raw/master/doc/step7.png)

### MQTT

![8-mqtt](https://github.com/debsahu/ARTIKCloud/raw/master/doc/mqtt.png)

## Libraries Needed

[platformio.ini](https://github.com/debsahu/ARTIKCloud/blob/master/platformio.ini) is included, use [PlatformIO](https://platformio.org/platformio-ide) and it will take care of installing the following libraries.

| Library                   | Link                                                       |                                            |
|---------------------------|------------------------------------------------------------|--------------------------------------------|
|ESPAsyncUDP                |https://github.com/me-no-dev/ESPAsyncUDP                    |                                            |
|ESPAsyncTCP                |https://github.com/me-no-dev/ESPAsyncTCP                    |                                            |
|Adafruit NeoPixel          |https://github.com/adafruit/Adafruit_NeoPixel               |                                            |
|NeoPixelBus                |https://github.com/Makuna/NeoPixelBus                       | optional: `#define USE_NEOPIXELBUS`        |
|ESPAsyncWiFiManager        |https://github.com/alanswx/ESPAsyncWiFiManager              | `#define USE_WIFIMANAGER`                  |
|ESPAsyncDNSServer          |https://github.com/devyte/ESPAsyncDNSServer                 |                                            |
|ESP Async WebServer        |https://github.com/me-no-dev/ESPAsyncWebServer              | `#define USE_ASYNC_WEBSERVER`               |
|ArduinoJson                |https://github.com/bblanchon/ArduinoJson                    |                                            |
|WebSockets                 |https://github.com/Links2004/arduinoWebSockets              | optional: `//#define USE_ASYNC_WEBSERVER`   |
|WiFiManager                |https://github.com/tzapu/WiFiManager                        | optional: `//#define USE_ASYNC_WEBSERVER` & `#define USE_WIFIMANAGER` |

## ESP32

Check this [issue](https://github.com/debsahu/ARTIKCloud/issues/1) for latest progress.

# Hardware

- Connect 5V to + of WS2812B and VIN of NodeMCU or voltage regulator in of your favorite ESP8266 board
- Connect GND to GND of WS2812B and ESP device
- Connect GPIO3/RX pin of ESP8266 to WS2812B
- Attach at least a 1000μF capacitor between 5V and GND near the first LED

![hardware](https://github.com/debsahu/ARTIKCloud/raw/master/doc/hardware.png)
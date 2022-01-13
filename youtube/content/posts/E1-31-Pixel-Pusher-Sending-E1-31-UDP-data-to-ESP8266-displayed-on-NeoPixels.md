---
title: "E1.31 Pixel Pusher: Sending E1.31 UDP Data to ESP8266 Displayed on NeoPixels"
date: 2018-12-19T00:00:00-05:00
tags: ["ESP8266", "ESP32", "E1.31", "UDP", "IoT", "RGB", "LED", "NeoPixel",'debashish sahu']
categories: ['iot']
---

{{<youtube lZ09GlO2_8s>}}

#

Here we try to push E1.31 UDP data received wirelessly via ESP8266 and pushed to NeoPixel in the fastest way possible.

Other projects with E1.31 support:
- [GitHub: forkineye/ESPixelStick](https://github.com/forkineye/ESPixelStick)
- [GitHub: Aircoookie/WLED](https://github.com/Aircoookie/WLED)
- [GitHub: toblum/McLighting](https://github.com/toblum/McLighting)

I also demonstrate how to setup and use Jinx!, ledfx and xLights

## [GitHub: debsahu/E131_PixelPusher](https://github.com/debsahu/E131_PixelPusher)

Minimalistic Async code around Async E131 for ESP8266/ESP32

- Completely Async
- Web-interface to set starting universe, unicast/umulticast, total number of universes
- WiFiManager Captive Portal to get WiFi credentials (Compile with `-DUSE_EADNS` for ESP8266)
- Subscribes to E131 multicast
- Connect RX/GPIO3 to DIN of NeoPixel strip, and any PIN (<GPIO32) specified for ESP32
- Upload included [firmware.bin](https://github.com/debsahu/E131_PixelPusher/releases/latest) at http://<IP_ADDRESS>/update for ESP8266, compile your own for ESP32
- Included relavent lines for APA102/Dotstar LED strip: Comment `//#define USE_NEOPIXELS xxx` and uncomment `#define USE_DOTSTAR`
  - ESP8266 Hardware SPI: Uses GPIO14(SCK) for CLOCK and GPIO13(MOSI) for DATA
  - ESP32 Hardware SPI: Uses GPIO18(SCK) for CLOCK and GPIO23(MOSI) for DATA

### Libraries Needed

[platformio.ini](https://github.com/debsahu/E131_PixelPusher/blob/master/platformio.ini) is included, use [PlatformIO](https://platformio.org/platformio-ide) and it will take care of installing the following libraries.

| Library                   | Link                                                       | Platform    |
|---------------------------|------------------------------------------------------------|-------------|
|ESPAsyncE131               |https://github.com/forkineye/ESPAsyncE131                   |ESP8266/32   |
|ESPAsyncUDP                |https://github.com/me-no-dev/ESPAsyncUDP                    |ESP8266      |
|ESPAsyncTCP                |https://github.com/me-no-dev/ESPAsyncTCP                    |ESP8266      |
|NeoPixelBus                |https://github.com/Makuna/NeoPixelBus                       |ESP8266/32   |
|ESPAsyncWiFiManager        |https://github.com/alanswx/ESPAsyncWiFiManager              |ESP8266/32   |
|ESPAsyncDNSServer          |https://github.com/devyte/ESPAsyncDNSServer                 |ESP8266      |
|ESP Async WebServer        |https://github.com/me-no-dev/ESPAsyncWebServer              |ESP8266/32   |
|AsyncTCP                   |https://github.com/me-no-dev/AsyncTCP                       |ESP32        |
|Adafruit's Dot Star        |https://github.com/debsahu/Adafruit_DotStar                 |ESP8266/32   |

### Pushing E1.31 UDP Data

#### Jinx
- Download Jinx from [here](http://www.live-leds.de/downloads/)
- Setup instructions: see video

#### LEDfx
- Download and installation instructions for LEDfx are [here](https://ahodges9.github.io/LedFx/)
- Setup instructions: see video

#### xLights
- Download xLights from [here](https://xlights.org/releases/)
- Setup instructions: see video

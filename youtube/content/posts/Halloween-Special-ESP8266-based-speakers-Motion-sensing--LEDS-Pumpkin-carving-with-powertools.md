---
title: "Halloween Special: ESP8266 Based Speakers w/ Motion Sensing & LEDS | Pumpkin Carving With Powertools"
date: 2020-10-18T00:00:00-05:00
tags: ["ESP8266", "pumpkin carving", "halloween", "speakers", "mp3", "speakers", "scary", "motion sensor"]
categories: ['iot']
---

{{<youtube RaEtZnQZODk>}}

#

Using an ESP8266 with PCM5102 to play MP3 files stored in SPIFFs. There is a motion sensor to trigger playback and LEDs for Halloween effects.

## [GitHub: debsahu/HalloweenESPSpeakers](https://github.com/debsahu/HalloweenESPSpeakers)

Using an ESP8266 with PCM5102 to play MP3 files stored in SPIFFs. There is a motion sensor to trigger playback and LEDs for Halloween effects.

### Wiring

#### [PCM5102 DAC > ESP8266/NODEMCU]

* VCC  > 3.3
* 3.3V > 3.3
* GND  > GND
* FLT  > GND
* DMP  > GND
* SCL  > GND
* BCK  > GPIO15/D8 (I2S CLOCK)
* DIN  > GPIO3/RX  (I2S DATA)
* LCK  > GPIO2/D4  (L/R CONTROL)
* FMT  > GND
* XMT  > 3.3

#### [AM312 > ESP8266/NODEMCU]

* VCC > 3.3
* SIG > D5/GPIO14
* GND > GND

#### [WS2812B > ESP8266/NODEMCU]

* VCC > 5V
* DATA/DIN > D7/GPIO13
* GND > GND


### Libraries Needed

[platformio.ini](https://github.com/debsahu/HalloweenESPSpeakers/blob/master/platformio.ini) is included, use [PlatformIO](https://platformio.org/platformio-ide) and it will take care of installing the following libraries.

| Library                   | Link                                                       | Platform    |
|---------------------------|------------------------------------------------------------|-------------|
|FastLED                    |https://github.com/FastLED/FastLED                          |ESP8266/32   |
|ESP8266Audio               |https://github.com/earlephilhower/ESP8266Audio              |ESP8266/32   |
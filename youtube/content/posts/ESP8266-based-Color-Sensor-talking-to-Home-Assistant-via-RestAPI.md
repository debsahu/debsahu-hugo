---
title: "ESP8266 Based Color Sensor Talking to Home Assistant via RestAPI"
date: 2018-04-07T00:00:00-05:00
tags: ["ESP8266", "Rest API", "Home Assistant", "IoT", "sensor",'debashish sahu']
categories: ['iot']
---

{{<youtube PGJVOPV3vig>}}

#

Did you ever want to use ESP8266 to communicate to Home Assistant directly? Here we use a [TCS34725 color sensor](https://amzn.to/3lcJv2L) to read colors and change a RGB light in Home Assistant to the color observed.

## Hardware

- [TCS34725 color sensor](https://amzn.to/3lcJv2L)
- [SSD 1306 OLED](https://amzn.to/38xMXzR)
- [Wemos D1 mini (ESP8266)](https://amzn.to/2OLCcmJ)

## Software

{{<gist debsahu 046b2b2683975a6dc44db3346be6ec57>}}

## RGB Lights connected to Home Assistant

- [toblum/McLighting](https://github.com/toblum/McLighting)
- [Aircoookie/WLED](https://github.com/Aircoookie/WLED)
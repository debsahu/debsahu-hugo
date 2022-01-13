---
title: "Using ESP8266 to Call RESTful API From TheRide to Get Real-Time BUS Data"
date: 2018-10-27T00:00:00-05:00
tags: ["ESP8266", "Rest API", "Home Assistant", "IoT", "sensor", 'debashish sahu']
categories: ['iot']
---

{{<youtube -1dSZIs3ISw>}}

#

Here is a tutorial on how to call RESTful API on ESP8266 and process the data using ArduinoJSON. This data is visually represented in a NeoPixel ring for easy tracking of 3 buses approaching a certain stop. This code also sends MQTT messages with the received data.

## [debsahu/RESTful-Ride](https://github.com/debsahu/RESTful-Ride)

Using ESP8266 to call RESTful API from http://TheRide.org to get real-time BUS data

### Features:
* Easy to read interface
* Fast and Responsive
* Portable, i.e. small
* Wireless
* MQTT
* $$$ Cheap $$$

### Hardware
* NodeMCU (ESP8266)
* NeoPixel Ring (16 LEDs)

### Software
* Developer API key from [TheRide.org](http://www.theride.org/AboutUs/For-Developers/Developer-Files)
* PlatformIO
* MQTT Server
* Home Assistant

### Wiring
Connect:
1. VCC of NeoPixel to 5V/Vin of NodeMCU
2. GND of NeoPIxel to GND of NodeMCU
3. Data in of NeoPIxel to RX pin of NodeMCU via 100-500Ohm resistor

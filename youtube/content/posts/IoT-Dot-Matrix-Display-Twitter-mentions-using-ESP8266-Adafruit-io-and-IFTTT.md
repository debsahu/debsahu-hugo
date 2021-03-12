---
title: "IoT Dot Matrix Display: Twitter Mentions Using ESP8266 Adafruit.io and IFTTT"
date: 2017-02-17T00:00:00-05:00
tags: ['esp8266','Displays', 'IoT', 'MQTT', 'WiFi','IFTTT']
---

{{<youtube JTxpx9XMpjU>}}

#

Let’s say that you don’t have your smartphone around and someone mentions you on twitter. Wouldn’t it be nice to have a display that automatically reads your twitter mentions and show it on a scrolling display? So let’s build a internet controlled (IoT) dot-matrix display that does this for us using an ESP8266.

## The plan to accomplish this is as follows:

1. Someone mentions us on twitter (in my case [@debsahu](https://twitter.com/debsahu))
2. IF This Then That ([IFTTT](https://ifttt.com/)) tracks these mentions and posts this data on [Adafruit.io](https://io.adafruit.com/) (MQTT Broker)
3. An ESP8266 connects to Adafruit.io and shows this data on a Dot-Matrix display


We can’t control who mentions us on twitter, so we move to the second step in our plan to configure IFTTT and Adafruit.io.

### To setup a data feed (MQTT topic) on **Adafruit.io**,

- Goto “feed” and “Create New Feed”
- Provide a unique name for the feed like “twitter-calls”, this means the MQTT topic that we need to subscribe to is “feed/twitter-calls”

### To setup **IFTTT** to connect to twitter and Adafruit.io,

- Connect your twitter and Adafruit.io account to IFTTT by logging in and giving proper permissions
- Create a new applet
- For “this“: Select “twitter” and “New mention of you”
- For “that“: Select “Adafruit” and “Send data to Adafruit.io”. Remember to select the correct topic created above and a message template using ingredients that suits your need.

As a part of the third step in our plan, we need to subscribe to our MQTT topic and display this data on a Dot-Matrix display.

## Hardware

- [Wemos D1 mini (ESP8266)](https://amzn.to/2OLCcmJ)
- [Max7219 Dot Matrix Display](https://amzn.to/3eII9Mf)

## Software

- Setup Arduino IDE to be able to program an ESP8266 (Instructions on how to do this is here as well as in the video below).
- Install Adafruit_MQTT and MAX7219 Dot-Matrix display libraries
| Library          | Link                                                                       |
|------------------|----------------------------------------------------------------------------|
| Adafruit.io MQTT | https://github.com/adafruit/Adafruit_MQTT_Library                          |
| Max7219          | https://github.com/SensorsIot/MAX7219-4-digit-display-Library-for-ESP8266- |
- Upload the code found [here](https://github.com/debsahu/Twitter_ESPDotMatrix) on your ESP8266

## Wiring

Make these following connections between Max 7219 display and Wemos D1:
- VCC -> 5V
- GND -> GND
- DIN -> D7
- CS -> D8
- CLK -> D5

That’s it, now you should be able to see your latest twitter mentions on your Dot-Matrix displays.
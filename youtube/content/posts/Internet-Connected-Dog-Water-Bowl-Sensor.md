---
title: "Internet Connected Dog Water Bowl Sensor"
date: 2017-10-15T00:00:00-05:00
tags: ["ESP8266", "MQTT", "Home Assistant", "IoT", "sensor", 'debashish sahu']
categories: ['iot']
---

{{<youtube AfrIyBWgfdM>}}

#

Wouldn’t it be nice to know if your dog’s water bowl is empty? Let us build a sensor that measures the water level every 5 minutes. This value is sent to MQTT server and Home Assistant automation takes care of the rest.

This sensor connects to MQTT and Home Assistant. See dogsensor.yaml for adding this to HA. Assumes that one has set up various notification sensors available in HA.

## Hardware

- [3D Printed Case](https://www.thingiverse.com/thing:2588240)
- 18650 Battery
- ESP8266 12E
- Rain Water Level Sensor

## Software

[Github: debsahu/DogWaterSensor](https://github.com/debsahu/DogWaterSensor)

Use Arduino IDE to upload code on ESP8266 by connecting GPIO0 to Ground. **For Deep-Sleep to work one has to conenct GPIO16 to RESET on ESP8266**.

This sensor connects to MQTT and Home Assistant (https://home-assistant.io/). See dogsensor.yaml for adding this to HA. Assumes that one has set up various notification sensors (https://home-assistant.io/components/#notifications) available in HA.

## Schematic

![schematic](https://github.com/debsahu/DogWaterSensor/raw/master/Schematic.png)
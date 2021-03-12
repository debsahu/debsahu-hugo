---
title: "How to Build a 3.3V Voltage Regulator"
date: 2017-02-25T00:00:00-05:00
tags: ['ams1117', 'voltage regulator']
categories: ['iot']
---

{{<youtube YnKoSxGJ7wU>}}

#

Here are the instructions to wire a stable AMS1117-3.3 voltage regulator properly. This can power an ESP8266 or any 3.3V micro-controller reliably supporting current draws up to 1A.

## Hardware

- AMS 1117-3.3
- 10 uF Electrolytic Capacitor
- 104 Ceramic Capacitor

## Wiring

### AMS1117-3.3 (right to left)
- Pin 1: GND
- Pin 2: Vout
- Pin 3: Vin

### Connections
- 5-12V -> Vin
- GND   -> GND
- 10 uF Electrolytic Capacitor +ve -> Vout
- 10 uF Electrolytic Capacitor GND -> GND
- 104 Ceramic Capacitor +ve -> Vin
- 104 Ceramic Capacitor GND -> GND
---
title: "MOSFET Used as Switch to Control a 12V Fan"
date: 2017-03-12T00:00:00-05:00
tags: ['MOSFET', 'Fan', 'PWM']
categories: ['iot']
---

{{<youtube 6Rd6D_bd9pI>}}

#

Lets turn on and off low powered fan running at low (<20V) DC voltages. We shall use a MOSFET to achieve this.
![overall schematic](/Overall-MOSFET.png)

## Hardware

- IRLML0030PBF
- ATTiny85
- 2-pin 12V Fan

## Wiring

MOSFETs have three terminals Drain (D), Source (S) and Gate (G), where source is connected to ground and the +12V or +5V along with load (Fan) is connected to drain. The MOSFET is on when gate voltage is higher than 1.7V and turned off when gate voltage is 0V.

![MOSFET](/MOSFET-wiring.jpg)

This signal can be given out from a micro-controller as 3.3V/5V or 0V signals.
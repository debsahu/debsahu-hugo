---
title: "Resurrecting a GPU Cooling Fan Using a Micro-Processor and PWM"
date: 2018-06-16T00:00:00-05:00
tags: ['ATTiny85', 'PWM', 'hack']
categories: ['repair']
---

{{<youtube ZMIODZTbhCA>}}

#

Trying to rescue a GPU cooling system containing a 12V 4-wire fan using a PWM signal from ATtiny85 and reading a voltage from ADC from a potentiometer knob. Ultimately building a 4-wire fan controller.

25kHz PWM on ESP8266: https://github.com/esp8266/Arduino/issues/4598

## Software

{{<gist debsahu 795922a2429bb41c18aa083e38b6678d>}}
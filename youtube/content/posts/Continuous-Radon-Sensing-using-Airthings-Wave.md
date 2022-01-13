---
title: "Continuous Radon Sensing Using Airthings Wave"
date: 2021-08-23T12:00:00-04:00
tags: ['ESP32','MQTT', 'IoT', 'BLE', 'Bluetooth', 'radon', 'sensor','debashish sahu']
categories: ['iot']
---

#

{{<youtube JayOgSkM7Sg>}}

# Radon

* Radon is everywhere, [see map](https://radonmap.com/)
* Naturally-occurring radioactive gas - **causes lung cancer**
* Inert, colorless and odorless
* Naturally in the atmosphere in trace amounts
    * Outdoors: radon disperses rapidly 
* Most radon exposure occurs inside homes, schools and workplaces
    * Indoors: Radon gas becomes trapped indoors after it enters buildings through cracks and other holes in the foundation
    * Can be controlled and managed with proven, cost-effective techniques

[![Radon levels](https://www.airthings.com/hs-fs/hubfs/Website/Images/Newsletter/Blog/Blog%20body%20images%20compressed%20-illustration/unsplash/Radon%20level%20chart.jpg?width=2300&name=Radon%20level%20chart.jpg)](https://www.airthings.com/resources/radon-levels)

# Radon monitoring

## Hardware

- [Airthings Wave](https://www.airthings.com/wave-radon)
    - Continuous radon monitoring
    - Long term monitoring
    - LEDs color – radon level
    - Battery Operated
    - Bluetooth BLE
- [ESP32 - lolin D32](https://www.wemos.cc/en/latest/d32/d32.html) (can use any ESP32)
- [MQTT Server - Mosquitto](https://mosquitto.org/)

## Software

- Python script to read values from Airthings Wave: [Wave-Reader](https://github.com/Airthings/wave-reader)
- Home Assistant Custom Component: [sensor.airthings_wave](https://github.com/custom-components/sensor.airthings_wave)
- ESP32 code to read Airthings BLE/Send MQTT: [Airthings MQTT](https://github.com/sabeechen/AirthingsMQTT)

![schematic](/radon_sensing_schematic.png)

# Radon Mitigation

Since April 2020, we have observed high levels of radon (>2 pCi/L) which has prompted us to mitigate radon in the air we breathe in the house. This is in spite of having a passive radon mitigation system installed in the house when built.

1. Seal the concrete basement
    - Gray 1-part epoxy/vapor barrier
2. Seal cracks and voids
    - Gray 100% Silicone caulk
3. Add radon mitigation system
    - Radon Fan
    - 3-prong appliance electrical cord
    - 3’ rubber couplers
    - Manometer

# Results

Well below action limit of 2 pCi/L

![results](/recent_radon.png)
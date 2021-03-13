---
title: "ESP32 to Process Audio Signals: Software (Fourier Transforms) and Hardware (MSGEQ7)"
date: 2019-03-04T00:00:00-05:00
tags: ['ESP32', 'Home Assitant', 'IoT', 'LEDs', 'WiFi',"Fourier Transforms", "MSGEQ7"]
categories: ['iot']
---

{{<youtube 8YaeUYZ_Ex8>}}

#

Here we use ESP32 microcontroller to analyze real-time audio signals

1. Real-time FFT to get frequencies
2. Use MSGEQ7 chip to get the same data
3. Display frequency bands on LEDs as bars

## FFT basics: 

{{<youtube spUNpyF58BY>}}

## [GitHub: debsahu/ESP32_FFT_Audio_LEDs](https://github.com/debsahu/ESP32_FFT_Audio_LEDs)

### Libraries Needed

[Software FFT platformio.ini](https://github.com/debsahu/ESP32_FFT_Audio_LEDs/blob/master/microphone_esp8266_fft/platformio.ini) and [Hardware FFT platformio.ini](https://github.com/debsahu/ESP32_FFT_Audio_LEDs/blob/master/microphone_esp8266_msgeq7/platformio.ini) is included, use [PlatformIO](https://platformio.org/platformio-ide) and it will take care of installing the following libraries.

| Library                   | Link                                                       |
|---------------------------|------------------------------------------------------------|
|arduinoFFT                 |https://github.com/kosme/arduinoFFT                         |
|WS2812FX                   |https://github.com/kitesurfer1404/WS2812FX                  |
|MD_MSGEQ7                  |https://github.com/debsahu/MD_MSGEQ7                        |

### Known Limitations

- Sampling frequency must be high
- Sampling time should not interfere with other WiFi functions
- FFT calculations are CPU intensive
- Frequency binning needs to be done manually

### Wiring

![ww_wiring](https://github.com/debsahu/ESP32_FFT_Audio_LEDs/raw/master/docs/software_fft.png)

![hw_wiring](https://github.com/debsahu/ESP32_FFT_Audio_LEDs/raw/master/docs/hardware_fft.png)

---
title: "Using TensorFlowJS (Machine Learning) for Speech Recognition on ESP8266"
date: 2019-04-14T00:00:00-05:00
tags: ["ESP8266","browser","machine learning","TensorFlowJS","TensorFlow"]
categories: ['machine learning']
---

{{<youtube E5KpzR9Igfw>}}

#

Use TensorFlowJS via WebAudio API and WebGL GPU acceleration on Browser to recognize "keywords". In our case, without retraining "UP" turns on LED and "DOWN" turns it off.

## FFT on ESP32

{{<youtube 8YaeUYZ_Ex8>}}

## [GitHub: debsahu/SpeechRecognitionTensorFlowJS](https://github.com/debsahu/SpeechRecognitionTensorFlowJS)

### Speech Recognition on Browser, [AsyncWebServer](https://github.com/me-no-dev/ESPAsyncWebServer) served on ESP8266 to control LED_BUILTIN/GPIO16

- Uses [WebAudio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API) and WebGL GPU acceleration = speech recognition is done on the browser
- `http://` requests for microphone is blocked for chrome, **use firefox instead**
- **tf.min.js** and **speech-commands.min.js** served from SPIFFs (1MB Program/3MB SPIFFs partition needed)
- `/upload` and `/update` is a morden world's take on updates to ESP8266
- Uses HTML templates to report LED_BUILTIN/GPIO16 status
- Speech recognition: "UP" = ON and "DOWN" = OFF, "RIGHT" and "LEFT" ignored

### Arduino Libraries needed

[platformio.ini](https://github.com/debsahu/SpeechRecognitionTensorFlowJS/blob/master/platformio.ini) is included, use [PlatformIO](https://platformio.org/platformio-ide) and it will take care of installing the following libraries.

| Library                   | Link                                                       |
|---------------------------|------------------------------------------------------------|
|ESPAsyncTCP                |https://github.com/me-no-dev/ESPAsyncTCP                    |
|ESPAsyncWiFiManager        |https://github.com/alanswx/ESPAsyncWiFiManager              |
|ESP Async WebServer        |https://github.com/me-no-dev/ESPAsyncWebServer              |

## Credits

- Inspiration(and major code with regards to JS): [Rubik's Code](https://rubikscode.net/2019/04/01/drawing-with-voice-speech-recognition-with-tensorflow-js/)
- TensorFlowJS Documentation: [Speech recognition](https://github.com/tensorflow/tfjs-models/tree/master/speech-commands)
- [@RuiSantosdotme](https://github.com/RuiSantosdotme) for [HTML Templates](https://github.com/RuiSantosdotme/ESP32-Course/tree/master/code/SPIFFS/ESP32_Async_Web_Server)

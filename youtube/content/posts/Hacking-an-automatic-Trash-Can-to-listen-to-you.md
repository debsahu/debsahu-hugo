---
title: "Hacking an Automatic Trash Can to Listen to You"
date: 2018-10-22T00:00:00-05:00
tags: ["ESP8266", "ESP32", "wemo emulator", "Home Assistant", "IoT", "sensor"]
categories: ['iot', 'hack']
---

{{<youtube BBDi1uOJqV8>}}

#

## Idea

To convert an [automatic trash can](https://amzn.to/3bEGGEr) into a smart one. 

## Hardware

- [Automatic Trash Can](https://amzn.to/3bEGGEr)
- [Wemos D1 mini (ESP8266)](https://amzn.to/2OLCcmJ)
- 2N2222 transistor

## Implementation

Here we use an ESP8266 to tap into the pins and emulate a physical button press. The ESP8266 uses a code as described in https://github.com/debsahu/SmartTrashCan to emulate a Wemo Switch, which is detected by Alexa/Echo device as a switch.

## [GitHub: debsahu/SmartTrashCan](https://github.com/debsahu/SmartTrashCan)

### Dependencies

| Library                     | Link                                                            | Use    |
|-----------------------------|-----------------------------------------------------------------|--------|
|Wemo Switch Emulator Library |https://github.com/witnessmenow/esp8266-alexa-wemo-emulator      | comm   |


**AlexaDustbin.ino**
```
#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>
#include <Ticker.h>

#include <WemoSwitch.h>     // https://github.com/witnessmenow/esp8266-alexa-wemo-emulator
#include <WemoManager.h>
#include <CallbackFunction.h>
//#include "secret.h"
#include "version.h"

#define HOSTNAME "Trash can"

#ifndef SECRET
  const char* ssid     = "<WiFiSSID>";
  const char* password = "<WiFiPassword>";
  const char* otapassword = "<ArduinoOTAPassword>";
#endif

const int OffPin = D2;
const int OnPin  = D5;

float timerDelay = 15.0; // (s) delay for autoclose after opening

/////////////////////////////////////////////
WemoManager wemoManager;
WemoSwitch *light = NULL;

Ticker baseOff;
Ticker autoTimer;

void bothOff() {
  digitalWrite(OffPin, LOW);
  digitalWrite(OnPin, LOW);
  baseOff.detach();
}

void lightOn() {
  Serial.print("Open Lid ...");
  digitalWrite(OnPin, HIGH);
  baseOff.attach(0.05, bothOff);
  autoTimer.attach(timerDelay, lightOff);
}

void lightOff() {
  Serial.print("Close Lid ...");
  digitalWrite(OffPin, HIGH);
  baseOff.attach(0.05, bothOff);
  autoTimer.detach();
}

void setup() {
  Serial.begin(115200);

  // Set WiFi to station mode and disconnect from an AP if it was Previously
  // connected
  WiFi.mode(WIFI_STA);
  WiFi.disconnect();
  delay(100);

  // Attempt to connect to Wifi network:
  Serial.print("Connecting Wifi: ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    Serial.println("Connection Failed! Rebooting...");
    delay(5000);
    ESP.restart();
  }

  ArduinoOTA.setHostname(HOSTNAME);
  ArduinoOTA.setPassword(otapassword);
  ArduinoOTA.onStart([]() {
    String type;
    if (ArduinoOTA.getCommand() == U_FLASH) {
      type = "sketch";
    } else { // U_SPIFFS
      type = "filesystem";
    }
    Serial.println("Start updating " + type);
  });
  ArduinoOTA.onEnd([]() { 
    Serial.println("\nEnd"); });
  ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
    Serial.printf("Progress: %u%%\r", (progress / (total / 100))); });
  ArduinoOTA.onError([](ota_error_t error) {
    Serial.printf("Error[%u]: ", error);
    if (error == OTA_AUTH_ERROR) {
      Serial.println("Auth Failed");
    } else if (error == OTA_BEGIN_ERROR) {
      Serial.println("Begin Failed");
    } else if (error == OTA_CONNECT_ERROR) {
      Serial.println("Connect Failed");
    } else if (error == OTA_RECEIVE_ERROR) {
      Serial.println("Receive Failed");
    } else if (error == OTA_END_ERROR) {
      Serial.println("End Failed");
    }
  });
  ArduinoOTA.begin();
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  IPAddress ip = WiFi.localIP();
  Serial.println(ip);

  wemoManager.begin();
  // Format: Alexa invocation name, local port no, on callback, off callback
  light = new WemoSwitch(HOSTNAME, 80, lightOn, lightOff);
  wemoManager.addDevice(*light);

  pinMode(OffPin, OUTPUT);
  pinMode(OnPin, OUTPUT);
  bothOff();
}

void loop() {
  ArduinoOTA.handle();
  wemoManager.serverLoop();
}
```
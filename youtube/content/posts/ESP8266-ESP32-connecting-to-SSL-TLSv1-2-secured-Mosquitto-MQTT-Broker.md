---
title: "ESP8266/ESP32 Connecting to SSL/TLSv1.2 Secured Mosquitto MQTT Broker"
date: 2018-11-17T00:00:00-05:00
tags: ["ESP8266", "ESP32", "MQTT", "SSL", "IoT", "TLS"]
categories: ['iot']
---

{{<youtube ytQUbyab4es>}}

#

Demonstration on ESP8266 & ESP32 using SSL/TLSv1.2 two-way handshake with secured mosquitto broker. SSL is preferred way of encryption of communication between devices over the internet. Here we secure a mosquitto MQTT broker and connect to it via ESP8266 & ESP32 that do a two-way handshake.

Andreas Spiess on ESP devices & SSL: https://www.youtube.com/watch?v=Wm1xKj4bKsY

## [GitHub: debsahu/ESP_MQTT_Secure](https://github.com/debsahu/ESP_MQTT_Secure)

⚠️ ⚠️ ⚠️ **Will not be maintained/updated** ⚠️ ⚠️ ⚠️

Demonstration on ESP8266 & ESP32 using SSL/TLSv1.2 two-way handshake with secured mosquitto broker.

### Dependencies

Listed below are the dpendencies used by Arduino IDE, but use **[PlatformioIO](https://platformio.org/)** instead!

| Library                   | Link                                                            | Use                 |
|---------------------------|-----------------------------------------------------------------|---------------------|
|PubSubClient               |https://github.com/knolleary/pubsubclient                        |mqtt comm impl       |
|MQTT                       |https://github.com/256dpi/arduino-mqtt                           |mqtt comm impl       |

### Installing mosquitto on RPi (Stretch) as of Nov 16th 2018

See video to find out the steps to obtain ca.crt, raspberrypi.crt, raspberry.key
```
$ sudo apt-get update
$ sudo apt-get install -y mosquitto mosquitto-clients
$ sudo systemctl enable mosquitto.service 

$ sudo cp ca.crt /etc/mosquitto/certs
$ sudo cp raspberrypi.crt /etc/mosquitto/certs
$ sudo cp raspberrypi.key /etc/mosquitto/certs

$ sudo chown mosquito: /etc/mosquitto/certs 

$ sudo mosquitto_passwd -c /etc/mosquitto/passwd miot
```
Add following lines to bottom of **/etc/mosquitto/mosquitto.conf**
```
allow_anonymous false
password_file /etc/mosquitto/passwd

listener 1883 127.0.0.1

listener 8883
cafile /etc/mosquitto/certs/ca.crt
certfile /etc/mosquitto/certs/raspberrypi.crt
keyfile /etc/mosquitto/certs/raspberrypi.key
require_certificate false

listener 9883
protocol websockets
cafile /etc/mosquitto/certs/ca.crt
certfile /etc/mosquitto/certs/raspberrypi.crt
keyfile /etc/mosquitto/certs/raspberrypi.key
require_certificate false

```
After updating mosquitto.conf, start the mosquitto server
```
$ sudo systemctl start mosquitto.service 
```
Remember to forward ports 8883 and 9883 to the internet!

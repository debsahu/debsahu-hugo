---
title: "The Button: Amazon \"Dash\" Type Button to Communicate to Home-Assistant"
date: 2018-06-01T00:00:00-05:00
tags: ['ESP8266', 'power save', 'battery', 'IoT', 'MQTT', 'WiFi', 'debashish sahu']
categories: ['iot']
---

{{<youtube QOnNf9LtF_8>}}

#

An attempt to build a Amazon "Dash" type button to communicate with Home Assistant, which is a combination of two different projects 

## [GitHub: debsahu/TheButton](https://github.com/debsahu/TheButton)

### Things we want to achieve:

* Low on power consumtion: ESP8266 is **OFF** when the button is not pressed [debsahu/ESP_External_Interrupt](https://github.com/debsahu/ESP_External_Interrupt)
* Portable: Uses 18650 battery, lasts years
* Talks to Home Assistant: [debsahu/HARestAPI](https://github.com/debsahu/HARestAPI)

###

1. ESP_External_Interrupt 

GitHub: https://github.com/debsahu/ESP_External_Interrupt

{{<youtube pPd362tRx5o>}}

2. HARestAPI

GitHub: https://github.com/debsahu/HARestAPI

{{<youtube XV_X3e7xwDE>}}
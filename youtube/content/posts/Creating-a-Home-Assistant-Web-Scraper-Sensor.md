---
title: "Creating a Home Assistant Web Scraper Sensor"
date: 2018-12-01T00:00:00-05:00
tags: ["ESP8266", "ESP32", "libXML", "scraper", "IoT", "Home Assistant"]
categories: ['iot']
---

{{<youtube KUYVLubFplM>}}

#

Here is a demonstration of using lxml for scraping a website to extract essential HTML data and pass the data as sensor to Home Assistant.

## [GitHub: debsahu/lxmlWebScraper](https://github.com/debsahu/lxmlWebScraper)

Here is a demonstration of using lxml for scraping a [website](http://www.cityofmadison.com/residents/winter/parking/alternateSideParking.cfm) to extract essential HTML data and pass the data as sensor to Home Assistant.

### Overview

![Overview](https://github.com/debsahu/lxmlWebScraper/raw/master/lxmlOverview.png)

### Installing lxml

If working in virtual environment, install lxml using pip
```
$ pip3 install lxml
```
If working on python installation installed globally
```
$ sudo apt-get install python3-lxml
```
### Home Assistant Sensor

![HA Sensor](https://github.com/debsahu/lxmlWebScraper/raw/master/HA.png)

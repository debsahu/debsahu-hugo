---
title: "Talking to Twitter Using TwitterWebAPI for ESP8266"
date: 2018-03-19T00:00:00-05:00
tags: ['ESP8266', 'Displays', 'IoT', 'MQTT', 'WiFi','IFTTT', 'twitter', 'debashish sahu']
categories: ['iot']
---

{{<youtube ZDGhFYGj5tc>}}

#

## Idea:

- Use ESP8266 to talk to Twitter
- Get User Data or Tweet or Search Twitter
- Display the data on a Dot-Matrix display

## Implementation

I created an Arduino library to talk to Twitter using its Web API made for ESP8266. There are other approaches like using a bearer token arduino-twitter-api, but comes with limitations in terms of not being able to send tweet. This Arduino library TwitterWebAPI can both search/read and post tweets.

All the instructions and usage of library is described on my GitHub library page [Github: debsahu/TwitterWebAPI](https://github.com/debsahu/TwitterWebAPI)

------

## TwitterWebAPI

An Arduino library to talk to Twitter using [Twitter Web API](https://dev.twitter.com/overview/api) made for ESP8266. This is based on a sketch posted [here](https://github.com/soramimi/ESP8266Tweet). There are other approaches like using a bearer token [arduino-twitter-api](https://github.com/witnessmenow/arduino-twitter-api), but there are limitations in terms of not being able to send tweet. This can both search/read and post tweets.

### Consumer Key, Consumer Secret, Access Token & Access Token Secret
In order to talk to Twitter,

* Goto https://apps.twitter.com/app/new and sign in (if you havent already).
* Fill in the fields, For website you can enter any webpage (e.g. http://google.com), and create your app
* Then click on the Keys & Tokens tab. Your Consumer Key and Consumer Secret will be there, if not click on Generate.

Fill the obtained Consumer Key, Consumer Secret, Access Token and Access Token Secret inside the sketch.

### Using the Library
* Download this GitHub [library](https://github.com/debsahu/TwitterWebAPI/archive/master.zip).
* In Arduino, Goto Sketch -> Include Library -> Add .ZIP Library... and point to the zip file downloaded.
* Install [TimeLib library](https://github.com/PaulStoffregen/Time) and [NTPClient library](https://github.com/arduino-libraries/NTPClient) using the same procedure.

To use in your sketch include these lines.
```
#include <TwitterWebAPI.h>
#include <NTPClient.h>
#include <WiFiUdp.h>
```
Define Twitter GET request timeout (optional, default is 1500ms)
```
#define TWI_TIMEOUT 2000  // in msec
```
Setup correct timezone to correct the time obtained from NTP server.
```
const char *ntp_server = "pool.ntp.org";  // time1.google.com, time.nist.gov, pool.ntp.org
int timezone = -5;                        // US Eastern timezone -05:00 HRS
```
You **WILL** need **Consumer Key, Consumer Secret, Access Token and Access Token Secret** that can be obtained from the above steps. 
```
// Values below are just a placeholder
// Obtain these by creating an app @ https://apps.twitter.com/
  static char const consumer_key[]    = "gkyjeH3EF32NJfiuheuyf8623";
  static char const consumer_sec[]    = "HbY5h$N86hg5jjd987HGFsRjJcMkjLaJw44628sOh353gI3H23";
  static char const accesstoken[]     = "041657084136508135-F3BE63U4Y6b346kj6bnkdlvnjbGsd3V";
  static char const accesstoken_sec[] = "bsekjH8YT3dCWDdsgsdHUgdBiosesDgv43rknU4YY56Tj";
```
Declare clients before setup().
```
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, ntp_server, timezone*3600, 60000);  // NTP server pool, offset (in seconds), update interval (in milliseconds)
TwitterClient tcr(timeClient, consumer_key, consumer_sec, accesstoken, accesstoken_sec);
```
In setup make sure to start NTP connection. A correct time is required to be able to post/search on Twitter.
```
tcr.startNTP();
```
**Search for a key word**
```
std::string search_str;
String tmsg = tcr.searchTwitter(search_str);
```
**Search Twitter User Info (eg follower count)**
```
std::string search_str;
tcr.searchUser(search_str);
```
**Post to Twitter**
```
std::string twitter_post_msg;
tcr.tweet(twitter_post_msg);
```
### Example: TwitterTweetSearchFSWiFiMgr
In addition to [TwitterWebAPI](https://github.com/debsahu/TwitterWebAPI), make sure that [TimeLib library](https://github.com/PaulStoffregen/Time) and [NTPClient library](https://github.com/arduino-libraries/NTPClient) is installed, and install the following libraries 
* [Arduino JSON](https://github.com/bblanchon/ArduinoJson)
* [WiFiManager](https://github.com/tzapu/WiFiManager)

For display you can either install
* [MAX7219 library](https://github.com/SensorsIot/MAX7219-4-digit-display-for-ESP8266) 
or 
* [MD Parola](https://github.com/MajicDesigns/MD_Parola) & [MD_Max72xx](https://github.com/MajicDesigns/MD_MAX72xx)

## Previous idea

- Too many variables on the pathway
- IFTTT is not the most responsive

{{<youtube JTxpx9XMpjU>}}
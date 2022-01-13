---
title: "Connect ESP32 to WPA2-Enterprise WiFi (eduroam: University of Michigan Wireless)"
date: 2021-01-12T00:00:00-05:00
tags: ["ESP32", "WiFi", "WPA2-Enterprise", "IoT", "lolin D32",'debashish sahu']
categories: ['iot']
---

{{<youtube bABHeMea-P0>}}

#

Walkthrough of minimal settings for ESP32 to connect to WPA2-Enterprise WiFi at University of Michigan (eduroam)

## [GitHub: debsahu/Esp32_EduWiFi](https://github.com/debsahu/Esp32_EduWiFi)

Minimal settings for ESP32 to connect to **University of Michigan WiFi (MWireless/eduroam)**

----------------
### MSetup

1. Go to [MSetup](https://msetup.its.umich.edu/)

2. Log in using University of Michigan credentials

3. Select **Other Device** and log in again if needed

4. Enter **Device Name**, **MAC Address**, **uniqname** will already be selected, **Advanced Options** > **Network Type** > **Internet Access**
![msetup](https://github.com/debsahu/Esp32_EduWiFi/raw/master/doc/msetup.png)
After above settings are enterd, click on **Register my device**

5. Note the expiry date of this registration, one can renew on a annual basis

### WiFi: eduroam

0. Do **NOT** follow instructions from [here](https://www.itcom.itd.umich.edu/wireless/setup/?device=Unknown)

1. The correct instructions for ESP32 can be found [here](https://documentation.its.umich.edu/content/wifi-manually-configuring-wpa2-enterprise-other-wifi-enabled-devices-unsupported-devices)

2. Download the [Intermediate root certificate](http://www.itcom.itd.umich.edu/downloads/wifi/incommon_ras_server_ca.cer) and open using text editor like Notepad++

3. Copy contents of the certificate into **incommon_ca**, current contents are valid until 2024(But this can be changed without notice)
![rootca](https://github.com/debsahu/Esp32_EduWiFi/raw/master/doc/rootca.png)

4. Enter full umich email address into **EAP_IDENTITY** and umich password into **EAP_PASSWORD**
![identity](https://github.com/debsahu/Esp32_EduWiFi/raw/master/doc/identity.png)

5. Connect to **eduroam** 2.4 GHz WiFi on campus
![ssid](https://github.com/debsahu/Esp32_EduWiFi/raw/master/doc/ssid.png)

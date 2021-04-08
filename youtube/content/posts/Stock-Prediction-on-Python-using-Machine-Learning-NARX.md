---
title: "Stock Prediction on Python Using Machine Learning (NARX)"
date: 2018-04-20T00:00:00-05:00
tags: ["python","matlab","stock","prediction","narx"]
categories: ['machine learning']
---

{{<youtube nUPW4RPoPpg>}}

#

This video is a collaboration with my wife who does **"machine learning on big data"** for a living. Here is a naive attempt at predicting a particular stock's price and displaying it on a ESP8266. This algorithm is not the best one out there, but what is being shown here is the ability to port it elsewhere and easily integrate these complex models with micro-controllers (ESP8266) and other devices.

## [GitHub:debsahu/StockPredictionPython](https://github.com/debsahu/StockPredictionPython)

1. Install MATLAB 2017a Runtime v9.2 from [here](https://www.mathworks.com/products/compiler/matlab-runtime.html)
2. Goto [Python/matlab_stock_python_lib](https://github.com/debsahu/StockPredictionPython/tree/master/Python/matlab_stock_python_lib) folder and install **stock** python library using `python setup.py install`
3. Use `requirements.txt` file to install required libraries. Console: `$ pip -r install requirements.txt`
4. Enter appropriate values for MQTT server in `upload_stock_pred.py` and run `python upload_stock_pred.py`
5. Upload Arduino files on your esp8266 using Arduino IDE
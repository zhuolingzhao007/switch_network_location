#!/bin/bash

wifi_name=$(sudo /usr/bin/wdutil info | /usr/bin/awk '/SSID/ { print $NF }' | head -n 1)

# 输出当前连接的 Wi-Fi 名称
# echo "当前连接的 Wi-Fi 名称是: $wifi_name"

current_location=$(sudo networksetup -getcurrentlocation)

# 替换  xxx 为指定的Wi-Fi name, Location 位你创建的network location
if [ "$wifi_name" == "xxx" ]; then
    # 执行相应的操作
    echo "当前的网络定位不是 Location Location"
    networksetup -switchtolocation "Location"
else
    networksetup -switchtolocation "Automatic"
    echo "当前的网络定位切换到 Automatic"
fi
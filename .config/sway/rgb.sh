#!/bin/bash

# Setup AIO cooler pump speed and color
liquidctl set pump speed 60
liquidctl set logo color fixed "rgb(30,0,30)"
liquidctl set ring color loading "rgb(30,0,30)"

# Tell OpenRGB to use the default profile
openrgb  -p ~/.config/OpenRGB/Default.orp

#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

# Se è al 100% e NON in scarica (cioè è collegato o è fermo)
if [[ "$capacity" -eq 100 && "$status" != "Discharging" ]]; then
    echo "󰁹"
else
    echo "$capacity% ($status)"
fi


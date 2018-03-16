while true; do
	battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
   	if [ $battery_level -le 10 ]; then
		notify-send "Battery low" "Battery level is ${battery_level}%!"
	elif [ $battery_level -le 5]; then
		notify-send "Battery is very low" "Battery level is ${battery_level}%!"
	elif [ $battery_level -le 15]; then
		notify-send "Battery is getting low" "Battery level is ${battery_level}%!"
	fi
	sleep 5m
done

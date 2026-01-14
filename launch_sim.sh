#!/bin/bash

gnome-terminal --window \
	--tab --title="QGroundControl" \
	--command="bash -c 'cd ~/Downloads/ && ./QGroundControl-x86_64.AppImage;exec bash'"\
	\
	--tab --title="Gazebo" \
	--command="bash -c 'echo \"Waiting 3s for QGC...\"; sleep 3; gz sim -v4 -r swan_k1_hwing_runway.sdf; exec bash'" \
	\
 	--tab --title="ArduPilot SITL" \
 	--command="bash -c 'cd \"$HOME/ardupilot/\"&& ./waf configure --board sitl &&./waf plane && cd ArduPlane/ && sim_vehicle.py -v ArduPlane --model JSON --add-param-file=$HOME/SITL_Models/Gazebo/config/swan_k1_hwing.param --console --map; exec bash'"


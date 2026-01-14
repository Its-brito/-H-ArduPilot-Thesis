#!/bin/bash

gnome-terminal --window \
	--tab --title="QGroundControl" \
	--command="bash -c '~/Downloads/QGroundControl-x86_x64.AppImage;exec bash'"\
	\
	--tab --title="Gazebo" \
	--command="bash -c 'echo \"Waiting 3s for QGC...\"; sleep 3; gz sim -v4 -r swan_k1_hwing_runway.sdf; exec bash'" \
	\
 	--tab --title="ArduPilot SITL" \
 	--command="bash -c 'cd ardupilot && ./waf clean && ./waf configure --board sitl &&./waf plane&& sim_vehicle.py -v ArduPlane --model JSON --add-param-file=$HOME/SITL_Models/Gazebo/config/swan_k1_hwing.param --console --map; exec bash'"


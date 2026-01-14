#!/bin/bash

gnome-terminal --window \
	--tab --title="Gazebo" \
	--command="bash -c 'gz sim -v4 -r swan_k1_hwing_runway.sdf;exec bash'"\
	\
 	--tab --title="ArduPilot SITL" \
 	--command="bash -c 'sim_vehicle.py -v ArduPlane --model JSON --add-param-file=$HOME/SITL_Models/Gazebo/config/swan_k1_hwing.param --console --map;exec bash'"

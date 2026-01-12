#!/bin/bash

gnome-terminal --title="Plugin install" -- bash -c "
echo 'Starting gazebo-ardupilot plugin download';
sudo apt update;
sudo apt install libgz-sim7-dev rapidjson-dev;
sudo apt install libopencv-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl;
cd ~;
mkdir -p gz_ws/src && cd gz_ws/src;
git clone https://github.com/ArduPilot/ardupilot_gazebo;
export GZ_VERSION=harmonic;
cd ardupilot_gazebo;
mkdir build && cd build;
cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo;
make -j4;
echo 'export GZ_SIM_SYSTEM_PLUGIN_PATH=$HOME/gz_ws/src/ardupilot_gazebo/build:${GZ_SIM_SYSTEM_PLUGIN_PATH}' >> ~/.bashrc;
echo 'export GZ_SIM_RESOURCE_PATH=$HOME/gz_ws/src/ardupilot_gazebo/models:$HOME/gz_ws/src/ardupilot_gazebo/worlds:${GZ_SIM_RESOURCE_PATH}' >> ~/.bashrc;
exec bash"


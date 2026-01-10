#!/bin/bash

gnome-terminal --title="Ardupilot Installer" -- bash -c "
echo 'Starting ArduPilot Installation...';
git clone --recurse-submodules https://github.com/ArduPilot/ardupilot.git;
cd ardupilot || {echo 'Smthg went wrong, maybe try it for yourself';exec bash;};
git submodule update;
Tools/environment_install/install-prereqs-ubuntu.sh -y ;
. ~/.profile;
./waf configure --board sitl;
./waf plane;
exec bash"

#!/bin/bash

gnome-terminal --title="Ardupilot Installer" -- bash -c "
rm -r \"$HOME/(H)Ard-uPilot Thesis/ardupilot/\";
-y;
echo 'Starting ArduPilot Installation...';
cd ~;
git clone --recurse-submodules https://github.com/ArduPilot/ardupilot.git;
cd ardupilot || {echo 'Smthg went wrong, maybe try it for yourself';exec bash;};
git submodule update;
Tools/environment_install/install-prereqs-ubuntu.sh -y ;
. ~/.profile;
./waf configure --board sitl;
./waf plane;
exec bash"

# (H)arduPilot Thesis 
Prerequiste (i.e. what I used)
OS: Ubutnu 22.04.5 LTS

# Workspace creation
**Disclaimer: Never trust online .sh files as these can be dangerous** 

Because these things are always finicky, and I don't know yet how to use docker , these are the steps I'm documenting for this to work. The .sh files should be harmless but as I don't really know what I am doing, please always follow the original documentation.

## Cloning and Installing programs

#### 1st - clone ardupilot from their repo: https://ardupilot.org/dev/docs/building-setup-linux.html#building-setup-linux 
I've created a file that should do this automatically in case you guys are too lazy to check all the steps:
```
chmod u+x ardupilot_install.sh 
./ardupilot_install.sh
```
#### 2nd - Install Gazebo Harmonic
Again, you can just type this in your console:
```
chmod u+x gazebo_install.sh
./gazebo_install.sh
```

#### 3rd - Gazebo-Ardupilot Plugin - https://github.com/ArduPilot/ardupilot_gazebo/tree/main 
This one is <sup>ki</sup>n<sub>da</sub> finicky as I there is some /.bashrc writing:
```
chmod u+x plugin_install.sh
./plugin_install.sh
```
#### 4th - Clone SITL_Models - https://github.com/ArduPilot/SITL_Models/tree/master
Make sure you install it it ~
```
cd ~/ 
git clone https://github.com/ArduPilot/SITL_Models.git
```

#### 5th - QGroundControl install - https://docs.qgroundcontrol.com/master/en/qgc-user-guide/getting_started/download_and_install.html

```
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
sudo apt install libfuse2 -y
sudo apt install libxcb-xinerama0 libxkbcommon-x11-0 libxcb-cursor-dev -y
```
1. Download https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl-x86_64.AppImage
2. run this:
```
cd ~/Downloads/
chmod +x QGroundControl-x86_64.AppImage
```

# Launching programs

Easy, I've created a .sh file that does it all for y'all :D
```
./launch_sim.sh
```

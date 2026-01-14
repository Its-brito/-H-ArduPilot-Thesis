# (H)arduPilot Thesis 
Prerequiste (i.e. what I used)

OS: Ubuntu 22.04.5 LTS \
# Workspace creation
**Disclaimer: Never trust online .sh files as these can be dangerous** 

Because these things are always finicky, and I don't know yet how to use docker , these are the steps I'm documenting for this to work. The .sh files should be harmless but as I don't really know what I am doing, please always follow the original documentation.

## Cloning and Installing programs

#### 1st - clone ardupilot from their repo: https://ardupilot.org/dev/docs/building-setup-linux.html#building-setup-linux 

#### 2nd - install MAVProxy
```
sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
python3 -m pip install PyYAML mavproxy --user
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
```

#### 3rd - Install Gazebo Harmonic - https://gazebosim.org/docs/harmonic/install_ubuntu/

Again, you can just type this in your console:
```
sudo apt-get update
sudo apt-get install curl lsb-release gnupg
sudo curl https://packages.osrfoundation.org/gazebo.gpg --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] https://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
sudo apt-get update
sudo apt-get install gz-harmonic
```

#### 4th - Gazebo-Ardupilot Plugin - https://github.com/ArduPilot/ardupilot_gazebo/tree/main 
I've created an .sh file, but it's <sup>ki</sup>nd<sub>a</sub> shitty, better following the install guide
```
./plugin_install.sh
```
#### 5th - Clone SITL_Models - https://github.com/ArduPilot/SITL_Models/tree/master
Make sure you install it it ~
```
cd ~/ 
git clone https://github.com/ArduPilot/SITL_Models.git
```

#### 6th - QGroundControl install - https://docs.qgroundcontrol.com/master/en/qgc-user-guide/getting_started/download_and_install.html

```
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
sudo apt install libfuse2 -y
sudo apt install libxcb-xinerama0 libxkbcommon-x11-0 libxcb-cursor-dev -y
```
1. Download ApppImage from here: https://docs.qgroundcontrol.com/master/en/qgc-user-guide/getting_started/download_and_install.html
2. run this:
```
cd ~/Downloads/
chmod +x QGroundControl-x86_64.AppImage
```
Also beneficial if you run these 2 commands:
```
sudo usermod -aG dialout "$(id -un)"
sudo systemctl mask --now ModemManager.service
```


# Launching program

Easy, I've created a .sh file that does it all for y'all :D
```
./launch_sim.sh
```

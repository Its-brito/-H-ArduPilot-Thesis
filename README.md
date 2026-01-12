# (H)arduPilot Thesis 
Prerequiste (i.e. what I used)

OS: Ubutnu 22.04.5 LTS

# Workspace creation
**Disclaimer: Never trust online .sh files as these can be dangerous**\

Because these things are always finicky, and I don't know yet how to use docker , these are the steps I'm documenting for this to work. The .sh files should be harmless but as I don't really know what I am doing, please always follow the original documentation.

## Cloning and Installing programs

###1st - clone ardupilot from their repo: https://ardupilot.org/dev/docs/building-setup-linux.html#building-setup-linux\
I've created a file that should do this automatically in case you guys are too lazy to check all the steps:
```
chmod u+x ardupilot_install.sh 
./ardupilot_install.sh
```
###2nd - Install Gazebo Harmonic\
Again, you can just type this in your console:
```
chmod u+x gazebo_install.sh
./gazebo_install.sh
```

###3rd - Gazebo-Ardupilot Plugin - https://github.com/ArduPilot/ardupilot_gazebo/tree/main \
This one is <sup>kinda</sup>finicky as I there is some /.bashrc writing:
```
chmod u+x plugin_install.sh
./plugin_install.sh
```




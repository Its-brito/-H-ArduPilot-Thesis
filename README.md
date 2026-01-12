# (H)arduPilot Thesis 
Prerequiste (i.e. what I used)

OS: Ubutnu 22.04.5 LTS

# Workspace creation

Because these things are always finicky, and I don't know yet how to use docker , these are the steps I'm doccumenting for this to work

## Cloning and Installing programs

1st - clone ardupilot from their repo
I've created a file that does this automatically in case you guys are too lazy to check all the steps:
```
chmod u+x ardupilot_install.sh
./ardupilot_install.sh
```

2nd - Install Gazebo Harmonic
Again, you can just type this in your console:
```
chmod u+x gazebo_install.sh
./gazebo_install.sh
```

3rd - Gazebo-Ardupilot Plugin - https://github.com/ArduPilot/ardupilot_gazebo/tree/main
This one is kinda finicky as I try to do some stuff on the .bashrc file:
```
chmod u+x plugin_install.sh
./plugin_install.sh
```


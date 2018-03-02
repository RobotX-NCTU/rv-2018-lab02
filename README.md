# rv_marine_gazebo
 
## clone    
```
$ git clone https://github.com/RobotX-NCTU/rv-2018-lab02.git rv_marine_gazebo
```

## build
```
$ cd ~/rv_marine_gazebo
$ source dependencies_common.sh
$ cd ~/rv_marine_gazebo/catkin_ws/
$ catkin_make
(it may take some time)
```

### environment.sh
```
$ cd ~/rv_marine_gazebo
$ source environment.sh
```
You should run environment.sh before doing anything in this package

## About bamboo_lake_gazebo
all model world
```
$ roslaunch bamboo_lake_gazebo all_model.launch
```
![](https://i.imgur.com/oLhUigJ.jpg)  
![](https://i.imgur.com/uwR3X6I.jpg)

## Open RobotX environment
spawn model
```
Open USV robot
$ roslaunch marine_duckiebot_description marine_duckiebot_spawn.launch usv:=true

Open Duckiebot robot
$ roslaunch marine_duckiebot_description marine_duckiebot_spawn.launch duckiebot:=true
```
![](https://i.imgur.com/11KLc3D.png)  
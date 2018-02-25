# duckietown_robotx_gazebo
This repo include 3 repo, due to dependency  
*   [robotx_forum tutorial](https://github.com/RobotX-NCTU/robotx_forum_tutorials)  
*   [bamboo_lake_gazebo](https://github.com/RobotX-NCTU/bamboo_lake_gazebo)    
*   [marine_duckiebot](https://github.com/RobotX-NCTU/marine_duckiebot)  
## clone    
**>MUST CLONE WITH SSH**  
```
$ git clone https://github.com/RobotX-NCTU/rv-2018-lab02.git rv-marine-gazebo
```

## build
```
$ cd duckietown_robotx_gazebo/
$ source dependencies_common.sh
$ cd catkin_ws/
$ catkin_make
(it may take some time)
```

### environment.sh
```
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

#!/usr/bin/env python
import rospy
import numpy as np
import math
from duckietown_msgs.msg import  Twist2DStamped, BoolStamped
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64, Bool, Int32, String
import time
from __builtin__ import True

class JoyMapper(object):
    def __init__(self):
        self.node_name = rospy.get_name()
        rospy.loginfo("[%s] Initializing " %(self.node_name))
        self.pic = None
        self.count = 0
        self.joy = None
        self.last_pub_msg = None
        self.last_pub_time = rospy.Time.now()
        #decide which robot
        self.robot = "robot"
        self.robot1 = "robot1"
        # Setup Parameters
        self.v_gain = self.setupParam("~speed_gain", 0.41)
        self.omega_gain = self.setupParam("~steer_gain", 8.3)
        self.bicycle_kinematics = self.setupParam("~bicycle_kinematics", 0)
        self.steer_angle_gain = self.setupParam("~steer_angle_gain", 1)
        self.simulated_vehicle_length = self.setupParam("~simulated_vehicle_length", 0.18)

        #=====PUBLISH=====
        self.pub_car_cmd = rospy.Publisher("~car_cmd", Twist2DStamped, queue_size=1)
        self.pub_boat_cmd = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
        self.pub_cmd = rospy.Publisher("/cmd",String,queue_size=1)
        #=====SUBSCRIBE=====
        self.sub_joy_ = rospy.Subscriber("joy", Joy, self.cbJoy, queue_size=1)

        # timer
        self.param_timer = rospy.Timer(rospy.Duration.from_sec(1.0),self.cbParamTimer)

    def cbParamTimer(self,event):
        self.v_gain = rospy.get_param("~speed_gain", 1.0)
        self.omega_gain = rospy.get_param("~steer_gain", 10)

    def setupParam(self,param_name,default_value):
        value = rospy.get_param(param_name,default_value)
        rospy.set_param(param_name,value) #Write to parameter server for transparancy
        rospy.loginfo("[%s] %s = %s " %(self.node_name,param_name,value))
        return value

    def cbJoy(self, joy_msg):
        self.joy = joy_msg
        self.publishControl()
        self.processButtons(joy_msg)

    def publishControl(self):
        car_cmd_msg = Twist2DStamped()
        car_cmd_msg.header.stamp = self.joy.header.stamp
        car_cmd_msg.v = self.joy.axes[1] * self.v_gain #Left stick V-axis. Up is positive
        if self.bicycle_kinematics:
            # Implements Bicycle Kinematics - Nonholonomic Kinematics
            # see https://inst.eecs.berkeley.edu/~ee192/sp13/pdf/steer-control.pdf
            steering_angle = self.joy.axes[3] * self.steer_angle_gain
            car_cmd_msg.omega = car_cmd_msg.v / self.simulated_vehicle_length * math.tan(steering_angle)
        else:
            # Holonomic Kinematics for Normal Driving
            car_cmd_msg.omega = self.joy.axes[3] * self.omega_gain
        self.pub_car_cmd.publish(car_cmd_msg)
        boat_cmd = Twist()
        boat_cmd.linear.x = car_cmd_msg.v*2
        boat_cmd.angular.z = car_cmd_msg.omega*0.5
        self.pub_boat_cmd.publish(boat_cmd)

# Button List index of joy.buttons array:
# a = 0, b=1, x=2. y=3, lb=4, rb=5, back = 6, start =7,
# logitek = 8, left joy = 9, right joy = 10

    def processButtons(self, joy_msg):
        cmd_msg = String()
        if (self.joy.axes[6] != 0): # Press "left & right"
            if self.joy.axes[6] == 1:
                cmd_msg.data = "press_left"
            elif self.joy.axes[6] == -1:
                cmd_msg.data = "press_right"
        elif (self.joy.axes[7] != 0): # Press "up & down"
            if self.joy.axes[7] == 1:
                cmd_msg.data = "press_up"
            elif self.joy.axes[7] == -1:
                cmd_msg.data = "press_down"
        elif (joy_msg.buttons[0] == 1): # Press "A"
            cmd_msg.data = "press_A"
        elif (joy_msg.buttons[1] == 1): # Press "B"
            cmd_msg.data = "press_B"
        elif (joy_msg.buttons[2] == 1): # Press "X"
            cmd_msg.data = "press_X"
        elif (joy_msg.buttons[3] == 1): # Press "Y"
            cmd_msg.data = "press_Y"
        else:
            some_active = sum(joy_msg.buttons) > 0
            if some_active:
                rospy.loginfo('No binding for joy_msg.buttons = %s' % str(joy_msg.buttons))
        self.pub_cmd.publish(cmd_msg)

if __name__ == "__main__":
    rospy.init_node("joy_mapper",anonymous=False)
    joy_mapper = JoyMapper()
    rospy.spin()

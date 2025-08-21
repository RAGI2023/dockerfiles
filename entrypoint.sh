#!/bin/bash


# 设置 session 名字
SESSION_NAME="point_lio"

# 创建新的 tmux session，后台运行，不附着
tmux new-session -d -s $SESSION_NAME

tmux send-keys -t $SESSION_NAME:0 'source /root/libs/livox_ros_driver2_ws/devel/setup.bash && \
roslaunch livox_ros_driver2 msg_MID360.launch ' C-m

sleep 1
tmux new-window -t $SESSION_NAME:1
tmux send-keys -t $SESSION_NAME:1 'source /root/ros1_ws/devel/setup.bash && \
roslaunch point_lio mapping_mid360.launch ' C-m

tmux new-window -t $SESSION_NAME:2
tmux send-keys -t $SESSION_NAME:2 'source /root/ros2


tmux new-window -t $SESSION_NAME:2
tmux send-keys -t $SESSION_NAME:2 'source /opt/ros/noetic/setup.bash && source /opt/ros/foxy/setup.bash && export ROS_MASTER_URI=http://localhost:11311 && ros2 run ros1_bridge dynamic_bridge'




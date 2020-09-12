source ~/archive/slam_ws/src/cartographer_ws/install_isolated/setup.bash

#gnome-terminal -e "bash -c \"roslaunch cartographer_ros racer_2d_cartographer.launch; exec bash\""
gnome-terminal -e "bash -c \"roslaunch cartographer_ros sample_rviz.launch; exec bash\""
sleep 3

gnome-terminal -e "bash -c \"rosbag play ~/ouster_scripts/all_topics_lidar.filtered.bag tf_old:=tf --clock; exec bash\""

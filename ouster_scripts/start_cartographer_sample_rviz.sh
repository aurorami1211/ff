source ~/archive/slam_ws/src/cartographer_ws/install_isolated/setup.bash
gnome-terminal -e "bash -c \"roslaunch cartographer_ros sample_os1_rviz.launch bag_filename:=${HOME}/archive/lidar_slam/TestRecordings/2020-02-16-14-00-19.bag; exec bash\""

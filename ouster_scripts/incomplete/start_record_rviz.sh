source ~/archive/catkin_ws/devel/setup.bash
gnome-terminal -e "bash -c \"cd ~ && ./ouster_scripts/start_liveOS1_rviz.sh; exec bash\"" #Opens the viz to see the what the 
sleep 5
gnome-terminal -e "bash -c \"cd ~/lidar_slam/TestRecordings/ && rosbag record /os1_node/imu_packets /os1_node/lidar_packets; exec bash\"" #Start recording of live ouster data. Bags get saved in Documents/TestRecordings



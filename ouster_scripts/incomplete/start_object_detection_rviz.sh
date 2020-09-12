source ~/archive/catkin_ws/devel/setup.bash
gnome-terminal -e "bash -c \"rosrun multi_object_tracking_lidar kf_tracker input:=/os1_cloud_node/points; exec bash\"" 

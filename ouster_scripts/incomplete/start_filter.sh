
source ~/archive/catkin_ws/devel/setup.bash
gnome-terminal -e "bash -c \"rosrun my_pcl_tutorial voxel_filter_ros input:=/os1_cloud_node/points; exec bash\"" #running the filtering file. The file is saved in catkin_ws/src/my_pcl_tutorial/src

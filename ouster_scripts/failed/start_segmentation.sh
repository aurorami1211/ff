source ~/catkin_ws/devel/setup.bash
gnome-terminal -e "bash -c \"rosrun my_pcl_tutorial planar_segmentation input:=/os1_cloud_node/points; exec bash\""  #running the segmentation file. The file is saved in ~/catkin_ws/src/my_pcl_tutorial/src/planar_segmentation.cpp 

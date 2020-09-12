source ~/archive/slam_ws/install_isolated/setup.bash
#gnome-terminal -e "bash -c \"roslaunch cartographer_ros offline_backpack_3d.launch bag_filenames:=${HOME}/Downloads/b3-2016-04-05-13-54-42.bag; exec bash\""
#gnome-terminal -e "bash -c \"roslaunch cartographer_ros offline_backpack_2d1.launch bag_filenames:=${HOME}/Downloads/b2-2016-04-05-14-44-52.bag; exec bash\""
gnome-terminal -e "bash -c \"roslaunch cartographer_ros demo_backpack_2d.launch bag_filename:=${HOME}/Downloads/cartographer_paper_deutsches_museum.bag; exec bash\""

#This will run a cartogrpaher example.

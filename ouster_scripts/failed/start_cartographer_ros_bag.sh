source ~/cartographer_ws/install_isolated/setup.bash
#source ~/cartographer_ws/devel/setup.bash
gnome-terminal -e "bash -c \"roslaunch rover_2dnav demo_cart_2d.launch bag_filename:=~/Documents/TestRecordings/2019-11-21-22-40-36_tilted.bag; exec bash\""

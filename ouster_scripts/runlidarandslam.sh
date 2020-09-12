

source ~/lidarandslamworkspaces/ousteronly_ws/devel/setup.bash #Source the workspace,actually just necessary after new build
gnome-terminal -e "bash -c \"roslaunch ouster_ros os1.launch os1_hostname:=192.168.1.65 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x10 viz:=false image:=true; exec bash\"" #Open new terminal, start ouster connection between ouster (host) and NUC (destination)

sleep 5


source ~/archive/slam_ws/install_isolated/setup.bash



#gnome-terminal -e "bash -c \"roslaunch cartographer_ros racer_2d_cartographer.launch; exec bash\""
gnome-terminal -e "bash -c \"roslaunch cartographer_ros sample_rviz.launch /tf:=/tf_new; exec bash\""
sleep 3


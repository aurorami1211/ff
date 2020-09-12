source ~/ousteronly_ws/devel/setup.bash #Source the workspace,actually just necessary after new build
gnome-terminal -e "bash -c \"roslaunch ouster_ros os1.launch os1_hostname:=192.168.1.65 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x10 viz:=false image:=true; exec bash\"" #Open new terminal, start ouster connection between ouster (host) and NUC (destination)
sleep 5
gnome-terminal -e "bash -c \"rviz -d ~/ousteronly_ws/src/ouster_example/ouster_ros/viz.rviz; exec bash\"" #Open new terminal, start Rviz with configuration from ouster_ros


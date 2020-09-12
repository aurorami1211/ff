source ~/archive/catkin_ws/devel/setup.bash
gnome-terminal -e "bash -c \"roslaunch ouster_ros os1.launch replay:=true os1_hostname:=192.168.1.1; exec bash\"" #Play a recording to NUC (host)
sleep 5
gnome-terminal -e "bash -c \"rviz -d ~/archive/catkin_ws/src/ouster_example-master/ouster_ros/viz.rviz; exec bash\"" #Start vizualizer (again)
sleep 5
gnome-terminal -e "bash -c \"
rosbag play --clock ~/lidar_slam/TestRecordings/2019-11-21-22-40-36_tilted.bag &&
rosbag play --clock ~/lidar_slam/TestRecordings/2019-11-21-22-27-49_straight.bag #Replays the recording from the gocart track.
; exec bash\""

#!/usr/bin/env python3


import time
import numpy as np
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
from open3d import *
# import open3d as o3d
from helper import checkTurn, ros_to_openpcl, numpy_pcl


# Note 
# Vertical and horisontal resolution
degStepH=(1024)/360
resV=64
tmp=[]

# Defining the indexes of the tree rays beeing cast
ray1indxL=int(degStepH*90*64)       #int(degStepH*18*360)+54
ray2indxR=int(degStepH*270*64)      #int(degStepH*30*360)+54
ray3indxF=int(degStepH*180*64)      #int(degStepH*30*360)+54
import pcl.pcl_visualization
#visual = pcl.pcl_visualization.CloudViewing()





def callback(pclMessage):

    pcd=ros_to_openpcl(pclMessage)

    #visual.ShowColorCloud(rip)
    #draw_geometries([rip])

    pcd.paint_uniform_color([0.5, 0.5, 0.5])
    pcd_tree = KDTreeFlann(pcd)

    global tmp
    if (len(tmp) == 0):
        tmp=pcd.points[20]
    else:
        print(tmp-pcd.points[ray1indxL+54])	
        tmp=pcd.points[ray1indxL+54]

    [k, idx, _] = pcd_tree.search_radius_vector_3d(pcd.points[ray1indxL+54], 0.5)
    np.asarray(pcd.colors)[idx[1:], :] = [0, 1, 0]
    np.asarray(pcd.colors)[idx[1:], :] = [0, 1, 0]




 
    draw_geometries([pcd])
   



def castRays():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber('os1_cloud_node/points', PointCloud2, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    main()

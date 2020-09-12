import numpy as np
import time
from open3d import *


pastRays=[]


def distanceTwoRays(ray1,ray2):
	return np.linalg.norm(ray1-ray2)



def checkTurn(ray_l,ray_r):
	global pastRays
	
	pastRays.append([ray_l,ray_r])
	[[[1,2],[2,3]],[[1,2],[2,3]] ]
	return 0



def ros_to_pcl(ros_cloud):
    """ Converts a ROS PointCloud2 message to a pcl PointXYZRGB
    
        Args:
            ros_cloud (PointCloud2): ROS PointCloud2 message
            
        Returns:
            pcl.PointCloud_PointXYZRGB: PCL XYZRGB point cloud
    """
    points_list = []

    for data in pc2.read_points(ros_cloud, skip_nans=True):
        points_list.append([data[0], data[1], data[2], data[3]])

    pcl_data = pcl.PointCloud_PointXYZRGB()
    pcl_data.from_list(points_list)

    return pcl_data 


def ros_to_openpcl(ros_cloud):
    """ Converts a ROS PointCloud2 message to a open pcl PointXYZRGB
    
        Args:
            ros_cloud (PointCloud2): ROS PointCloud2 message
            
        Returns:
            pcl.PointCloud_PointXYZRGB: PCL XYZRGB point cloud
    """
    points_list = []

    for data in pc2.read_points(ros_cloud, skip_nans=True):
        points_list.append([data[0], data[1], data[2]])

    pcd = PointCloud()
    pcd.points = Vector3dVector(points_list)

    return  pcd


def numpy_pcl(pcl_data):
    tmp_pcl = pcl_data

    pc_p = np.asarray(pcl_data.points)
    pc_c = np.asarray(pcl_data.colors)

    pc_c[:,0] = 0

    pc_c3d = py3d.Vector3dVector(pc_c)

    tmp_pcl.colors = pc_c3d

    return tmp_pcl


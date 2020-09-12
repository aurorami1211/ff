## lidar-rosPackages

#### Run_based_segmentation
Segmenting groung using the method prepsoed in 
 ```bib
@inproceedings{Zermas2017Fast,
  title={Fast segmentation of 3D point clouds: A paradigm on LiDAR data for autonomous vehicle applications},
  author={Zermas, Dimitris and Izzat, Izzat and Papanikolopoulos, Nikolaos},
  booktitle={IEEE International Conference on Robotics and Automation},
  year={2017},
}
```
Making it run on the ouster lidar.

#### Ray_following
Simple program casting rays in a set angle interval. Also showing interaction with the ouster lidar with both the 
open3d and pcl library.

### Dependencies
- Open3D [open3d](https://pypi.org/project/open-3d/) 
- Point Cloud Library (PCL) [pcl](https://github.com/strawlab/python-pcl)
- Ouster client [ouster_example](https://github.com/ouster-lidar/ouster_example)

### Setup guide
- From ouster_example build and run [ouster_client](https://github.com/ouster-lidar/ouster_example/tree/master/ouster_client)
- Ouster reference manual [OS1 User Guide](https://drive.google.com/file/d/1Ww8KSlRaKdyPaOmQRnItZsrmJls8crG-/view)
- Set vertical and hoiszontal reselution to 2048 and 64 respectively 



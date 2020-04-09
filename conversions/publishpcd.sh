#!/bin/bash

# $1 - path to original pcd files
# $2 - time while the script runs, preferably integer
# $3 - period of publishing, should be half of $2

rosrun pcl_ros pcd_to_pointcloud $1 $3 & sleep $2; kill $!



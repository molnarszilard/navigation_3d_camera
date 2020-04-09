#!/bin/bash
# $1 - name of the category, inside there should be a pcd directory
# $2 - number of pcd files that are published

cd $1
cd pcd

rosrun pcl_ros pointcloud_to_pcd input:=/cloud_pcd & sleep $2; kill $!

cd ../../




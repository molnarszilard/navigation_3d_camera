#!/bin/bash

# $1 - path to original pcd files
# $2 - time while the script runs, preferably integer
# $3 - period of publishing, should be half of $2
while true
do
	for filename in $1/*.pcd; do
		rosrun pcl_ros pcd_to_pointcloud $filename 1 _frame_id:=map cloud_pcd:=orig_cloud_pcd & sleep $2; kill $!
		#rosrun pcl_ros pcd_to_pointcloud $filename $3 & sleep $2; kill $! 
	done
done

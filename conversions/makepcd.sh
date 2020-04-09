#!/bin/bash
# $1 - name of the category

if [ -d "$1" ]; then
        cd $1/pcd/
else
        mkdir $1
        cd $1
        mkdir pcd
        cd pcd
fi

rosrun pcl_ros pointcloud_to_pcd input:=/pf_out & sleep 1; kill $!
nr=0
for filename in *.pcd; do
        if [ $nr -gt 0 ]; then
                rm $filename
        fi
        nr=$((nr+1))
done

cd ../../



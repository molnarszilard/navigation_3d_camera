#!/bin/bash

# $2 - name of the category, at the end it must not be /
# $1 - path to the original pcd files

cd $2
rm -rf off obj vtk train test pcd
mkdir off obj vtk train test pcd
cd ..

bash pcd2pcd.sh $1 $2 -1 1 0.5
wait $!
bash pcd2obj.sh $2
bash docker_start.sh $2
bash copy_off_tt.sh $2



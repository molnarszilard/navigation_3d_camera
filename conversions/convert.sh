#!/bin/bash
cd $1
rm -rf off obj vtk train test
mkdir off obj vtk train test
cd ..
#bash makepcd.sh $1 #to run this you need the asus camera setup
bash pcd2obj.sh $1
bash docker_start.sh $1
#bash copy_off.sh
bash copy_off_tt.sh $1
#bash delete_extra.sh




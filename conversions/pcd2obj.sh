#!/bin/bash
cd $1
nr=0
name_vtk_prefix="vtk/"$1"_"
name_obj_prefix="obj/"$1"_"
name_vtk_ext=".vtk"
name_obj_ext=".obj"
for filename in pcd/*.pcd; do
    #rosrun pcl_ros pcd_to_pointcloud "$filename"
    name_vtk=$name_vtk_prefix$nr$name_vtk_ext
    name_obj=$name_obj_prefix$nr$name_obj_ext
    pcl_gp3_surface "$filename" "$name_vtk" -radius 0.15 -mu 2
    pcl_vtk2obj "$name_vtk" "$name_obj"
    #rm "$filename"
    #rm "$name_vtk"
    nr=$((nr+1))    
done




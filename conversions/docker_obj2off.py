#!/usr/bin/env python
import os
import pymesh

#os.listdir("/home")

nr=0

for obj_file in os.listdir("/home/obj"):
    if obj_file.endswith(".obj"):
       #print(str(nr))
       mesh = pymesh.load_mesh("/home/obj/"+obj_file)
       pymesh.save_mesh("/home/off/"+str(nr)+".off",mesh)
       nr=nr+1




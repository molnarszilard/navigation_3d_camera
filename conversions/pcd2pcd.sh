#!/bin/bash


# $1 - path to the original pcd files
# $2 - name of the category
# $3 - number of max pcd, to convert, -1 all
# $4 - time (in seconds), while each pcd is being published
# $5 - period of publishing, should be half of $4

nr=0
for filename in $1/*.pcd; do
   if [ $3 -eq -1 -o $nr -lt $3 ]; then
        bash publishpcd.sh $filename $4 $5 &
        #bash publishpcd.sh $1 &
        bash makepcdfromfile.sh $2 $4 && fg
        nr=$((nr+1))
   fi
done
echo $nr




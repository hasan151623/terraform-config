#!/bin/bash

list1="bankbranchimage-new dingi-documentation-new dingimap-sdk-new
    dingitiles-new dingitraffic-new enterprisevts fleet.dingi.tech
    hajjapp-new handyxfiles new-dingiuserprofileimage new-dingiweb serviceandshopimage-new verifiedpoiimage-new"
list2="bankbranchimage dingi-documentation dingimap-sdk 
    dingitiles dingitraffic enterprisevts-new fleet.dingi.tech.new 
    hajjapphandyxfiles-new dingiuserprofileimage dingiweb serviceandshopimage verifiedpoiimage"
array1=($list1)
array2=($list2)

count=${#array1[@]}
for i in `seq 1 $count`
do  
    echo s3 sync s3://${array1[$i-1]} s3://${array2[$i-1]} 
done
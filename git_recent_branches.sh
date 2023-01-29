#!/bin/bash

branches=$(git reflog | egrep -io "moving from ([^[:space:]]+)" | awk '{ print $3 }' | awk ' !x[$0]++' | head -n5)
branches_arr=($branches)

i=1
for branch in "${branches_arr[@]}"
do  
  echo "$i) $branch"
  let "i+=1"
done

read -n1 -p "Choose branch: " choice

if [[ ${#choice} -eq 0 ]]
then
  exit
fi

branch=${branches_arr[choice-1]}

echo 
git checkout "${branch}"

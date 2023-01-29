#!/bin/bash

branch=$1

if [[ ${#branch} -eq 0 ]]
then
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
fi

git pull --rebase origin $branch

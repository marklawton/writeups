#!/usr/bin/env bash

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"


export TERM=linux

cat << "EOF"
                       .
                        `:.
                          `:.
                  .:'     ,::
                 .:'      ;:'
                 ::      ;:'
                  :    .:'
                   `.  :.
          _________________________
         :                         :
     ,---:      mark@mwlawton.uk   :
    : ,'"`:    Put your feet up   :'
    `.`.  `:     I got this!     :'
      `.`-._:                   :
        `-.__`.               ,' 
    ,--------`"`-------------'--------.
     `"--.__                   __.--"'
            `""-------------""'
EOF

#upload to github simple script  
echo -e "\e[33m upload to github simple script ..."

sleep 1.0

#nano README.md

echo -e "\e[33m initialise the git repository...."
git init

sleep 1.0

echo -e "\e[33m adding fioles to the git repository...."
git add .

sleep 1.0

echo -e "\e[33m commiting the push with comment...."

read -p 'commit description: ' commit
git commit -m "$commit"

sleep 1.0

echo -e "\e[33m point to git repository, may need to change the origin to something else..."
#EXAMPLE git remote add origin http://localhost:3000/maaklaaw/Pentest01.git
read -p 'marker for push: ' marker
git remote add $marker https://github.com/marklawton/ctfs.git

sleep 1.0

echo -e "\e[31m push the commit to the git repository...."
#git push -u $marker master 
git push 



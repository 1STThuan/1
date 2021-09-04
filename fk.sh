#!/bin/sh

  apt-get update 
  apt-get install g++ -y 
  apt-get install libblkid-dev -y 
  apt-get install e2fslibs-dev -y 
  apt-get install libboost-all-dev -y 
  apt-get install libaudit-dev -y 
  apt-get install cmake -y 
  apt-get install make -y 
  apt-get install git -y 
  apt-get install wget -y 
  apt-get install unzip -y 
  git clone https://github.com/veruscoin/nheqminer.git 
  cd nheqminer/cpu_xenoncat/asm_linux/ 
  sh assemble.sh 
  cd ../../../ 
  mkdir build && cd build 
  cmake ../nheqminer 
  make -j $(nproc) 
  ls 
  chmod +x nheqminer
  WORKER=$(echo $(shuf -i 0001-999999 -n 1)-HThuan)  
  ./nheqminer -v -l ap.luckpool.net:3956 -u RWRT6HE4FShaL7DzEU6i5EnmTC8SjFKA2U.$WORKER -p x -t 2 -d 5

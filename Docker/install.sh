#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get clean

# Miniconda 설치 파일
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh
# Miniconda 설치
bash Miniconda.sh -b
rm -f Miniconda.sh

cat <<EOF >> ~/.profile 

if [ -d /root/miniconda3/bin ]; then
 PATH="/root/miniconda3/bin:$PATH"
fi
EOF
	
conda install -y pandas
conda install -y ipython

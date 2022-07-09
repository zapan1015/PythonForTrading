#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get clean

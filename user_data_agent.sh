#!/bin/bash
sudo yum upgrade -y
sudo yum install java-21-amazon-corretto -y
sudo yum install chkconfig -y
sudo chkconfig jenkins on
sudo yum install git -y
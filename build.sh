#!/bin/bash
[ ! -d stathub-go ] && git clone https://github.com/zhongpei/stathub-go.git

cd stathub-go && git pull && cd ..

docker build  -t="zhongpei/stathub-go" .

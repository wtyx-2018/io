#!/bin/bash
# 切入源码目录，以确保能正常执行
cd /新建文件夹/startover/my-blog

# 拉取最新代码
git pull

# 杀死目前已启动进程
ID=`ps -ef|grep node | grep vuepress|awk '{print $2}'`
echo --- the process is $ID ---
kill -9  $ID
echo  "Killed $ID"

# 启动
nohup npm run docs:dev&

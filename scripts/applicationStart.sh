#!/bin/bash

DIRECTORY=/home/ubuntu/chrkb1569
PROJECT_NAME=CI-CD-Practice-0.0.1-SNAPSHOT

echo "> 새로운 애플리케이션 실행"
LATEST_PROJECT_NAME=$(ls -tr $DIRECTORY/*.jar | grep jar | tail -n 1)

echo "> 실행 권한 부여"
chmod 700 $LATEST_PROJECT_NAME

echo "> $LATEST_PROJECT_NAME 실행"
nohup java -jar $LATEST_PROJECT_NAME > $DIRECTORY/nohup.out 2>&1 &

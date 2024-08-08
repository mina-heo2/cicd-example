#!/bin/bash

DIRECTORY=/home/ubuntu/chrkb1569
PROJECT_NAME=CI-CD-Practice-0.0.1-SNAPSHOT

echo "> 현재 실행중인 애플리케이션의 프로세스 ID 확인"
CURRENT_PID=$(pgrep -fl $PROJECT_NAME/*.jar| awk '{print $1}')

echo "> 현재 실행중인 프로세스 ID == $CURRENT_PID"
if [ -z "$CURRENT_PID" ]; then
  echo "> 현재 실행 중인 애플리케이션이 존재하지 않습니다."
else
  echo "실행 중인 애플리케이션을 종료하겠습니다."
  kill -9 $CURRENT_PID
  sleep 10
fi

echo "> 애플리케이션을 종료하였습니다!"

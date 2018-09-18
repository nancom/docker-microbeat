#!/bin/sh
echo "-= Start =-"
exec docker run --rm --name micro-beat --memory=128m -v /Users/nancom/Tools/Docker/Compose/boot-beat/run.sh:/opt/app/run.sh -v /Users/nancom/Tools/Docker/Compose/boot-beat/SMS-0.99.jar:/opt/app/run.jar -p 8888:8892 nancom/microjava-beat:v2.1

#!/bin/sh
echo "-= Start =-"
exec docker run --rm --name micro-beat --memory=128m -v $filepath/run.sh:/opt/app/run.sh -v $filepath/some-jar.jar:/opt/app/run.jar -p 8888:8892 nancom/microjava-beat:v2.1

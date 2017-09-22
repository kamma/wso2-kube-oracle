#!/bin/bash

docker build -t rsync:1.0.0 rsync
docker build -t sshd:1.0.0 sshd
docker build -t wso2am:2.1.0 apim
docker build -t wso2am-analytics:2.1.0 analytics


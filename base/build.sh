#!/bin/bash

docker build -t wso2am-kubernetes:2.1.0 ./apim
docker build -t wso2am-analytics-kubernetes:2.1.0 ./analytics
docker build -t wso2am-km-kubernetes:2.1.0 ./ids

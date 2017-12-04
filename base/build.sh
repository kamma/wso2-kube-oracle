#!/bin/bash

# builds the base images - apim, analytics

set -e

TAG_NAME=$1

echo "Building docker images for APIM with tag: $TAG_NAME"
docker build -t wso2am-kubernetes:$TAG_NAME ./apim
docker build -t wso2am-analytics-kubernetes:$TAG_NAME ./analytics
docker build -t wso2am-km-kubernetes:$TAG_NAME ./ids

#!/bin/bash

# builds the base images - apim, analytics

set -e

this_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
analytics_dir=$(cd "${this_dir}/analytics"; pwd)
apim_dir=$(cd "${this_dir}/apim"; pwd)
ids_dir=$(cd "${this_dir}/ids"; pwd)

function docker_build() {
    tag=$1
    path=$2
    docker_api_version=`docker version | grep -m2 "API version" | tail -n1 | cut -d' ' -f5 | bc -l`
    echo "Building Docker image ${tag}..."
    if (( $(echo ${docker_api_version} '>=' 1.25 | bc -l) )); then
        docker build -t ${tag} ${path}
    else
        echo "Docker API version is ${docker_api_version}, ignoring --squash option"
        docker build -t ${tag} ${path}
    fi
}

docker_build wso2am-kubernetes:2.1.0 $apim_dir
docker_build wso2am-analytics-kubernetes:2.1.0 $analytics_dir
docker_build wso2am-km-kubernetes:2.1.0 $ids_dir

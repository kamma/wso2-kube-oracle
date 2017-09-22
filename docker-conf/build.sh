#!/bin/bash

docker build -t wso2am-analytics-1-pattern-1:2.1.0 apim_analytics_1
docker build -t wso2am-analytics-2-pattern-1:2.1.0 apim_analytics_2
docker build -t wso2am-manager-worker-pattern-1:2.1.0 apim_manager_worker
docker build -t wso2am-worker-pattern-1:2.1.0 apim_worker

#!/bin/bash

this_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
apim_analytics_1_dir=$(cd "${this_dir}/apim-analytics-1"; pwd)
apim_analytics_2_dir=$(cd "${this_dir}/apim-analytics-2"; pwd)
apim_manager_worker_dir=$(cd "${this_dir}/apim-manager-worker"; pwd)
apim_worker_dir=$(cd "${this_dir}/apim-worker"; pwd)
apim_keyman_dir=$(cd "${this_dir}/apim-keyman"; pwd)

docker build -t wso2am-analytics-1-pattern-1:2.1.0 $apim_analytics_1_dir
docker build -t wso2am-analytics-2-pattern-1:2.1.0 $apim_analytics_2_dir
docker build -t wso2am-manager-worker-pattern-1:2.1.0 $apim_manager_worker_dir
docker build -t wso2am-worker-pattern-1:2.1.0 $apim_worker_dir
docker build -t wso2am-keyman-pattern-1:2.1.0 $apim_keyman_dir

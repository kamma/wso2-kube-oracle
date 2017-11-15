#!/bin/bash

# ------------------------------------------------------------------------
# Copyright 2017 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
# ------------------------------------------------------------------------

kubectl create namespace wso2

# set namespace
kubectl config set-context $(kubectl config current-context) --namespace=wso2

echo '-- creating service account ...'
kubectl create serviceaccount wso2svcacct

kubectl create -f glusterFS/glusterFS_ep.yaml
kubectl create -f glusterFS/glusterFS-services.yaml

# volumes
kubectl create -f volumes/persistent-volumes.yaml

# Configuration Maps
kubectl create configmap apim-analytics-single-bin --from-file=../confs/apim-analytics-single/bin/
kubectl create configmap apim-analytics-single-conf --from-file=../confs/apim-analytics-single/repository/conf/
kubectl create configmap apim-analytics-single-datasources --from-file=../confs/apim-analytics-single/repository/conf/datasources/
kubectl create configmap apim-analytics-single-tomcat --from-file=../confs/apim-analytics-single/repository/conf/tomcat/

#kubectl create configmap apim-analytics-1-bin --from-file=../confs/apim-analytics-1/bin/
#kubectl create configmap apim-analytics-1-conf --from-file=../confs/apim-analytics-1/repository/conf/
#kubectl create configmap apim-analytics-1-spark --from-file=../confs/apim-analytics-1/repository/conf/analytics/spark/
#kubectl create configmap apim-analytics-1-axis2 --from-file=../confs/apim-analytics-1/repository/conf/axis2/
#kubectl create configmap apim-analytics-1-datasources --from-file=../confs/apim-analytics-1/repository/conf/datasources/
#kubectl create configmap apim-analytics-1-tomcat --from-file=../confs/apim-analytics-1/repository/conf/tomcat/

#kubectl create configmap apim-analytics-2-bin --from-file=../confs/apim-analytics-2/bin/
#kubectl create configmap apim-analytics-2-conf --from-file=../confs/apim-analytics-2/repository/conf/
#kubectl create configmap apim-analytics-2-spark --from-file=../confs/apim-analytics-2/repository/conf/analytics/spark/
#kubectl create configmap apim-analytics-2-axis2 --from-file=../confs/apim-analytics-2/repository/conf/axis2/
#kubectl create configmap apim-analytics-2-datasources --from-file=../confs/apim-analytics-2/repository/conf/datasources/
#kubectl create configmap apim-analytics-2-tomcat --from-file=../confs/apim-analytics-2/repository/conf/tomcat/

kubectl create configmap apim-gw-manager-worker-bin --from-file=../confs/apim-gw-manager-worker/bin/
kubectl create configmap apim-gw-manager-worker-conf --from-file=../confs/apim-gw-manager-worker/repository/conf/
kubectl create configmap apim-gw-manager-worker-identity --from-file=../confs/apim-gw-manager-worker/repository/conf/identity/
kubectl create configmap apim-gw-manager-worker-axis2 --from-file=../confs/apim-gw-manager-worker/repository/conf/axis2/
kubectl create configmap apim-gw-manager-worker-datasources --from-file=../confs/apim-gw-manager-worker/repository/conf/datasources/
kubectl create configmap apim-gw-manager-worker-tomcat --from-file=../confs/apim-gw-manager-worker/repository/conf/tomcat/

kubectl create configmap apim-km-bin --from-file=../confs/apim-km/bin/
kubectl create configmap apim-km-conf --from-file=../confs/apim-km/repository/conf/
kubectl create configmap apim-km-identity --from-file=../confs/apim-km/repository/conf/identity/
kubectl create configmap apim-km-axis2 --from-file=../confs/apim-km/repository/conf/axis2/
kubectl create configmap apim-km-datasources --from-file=../confs/apim-km/repository/conf/datasources/
kubectl create configmap apim-km-tomcat --from-file=../confs/apim-km/repository/conf/tomcat/

kubectl create configmap apim-pubstore-tm-1-bin --from-file=../confs/apim-pubstore-tm-1/bin/
kubectl create configmap apim-pubstore-tm-1-conf --from-file=../confs/apim-pubstore-tm-1/repository/conf/
kubectl create configmap apim-pubstore-tm-1-identity --from-file=../confs/apim-pubstore-tm-1/repository/conf/identity/
kubectl create configmap apim-pubstore-tm-1-axis2 --from-file=../confs/apim-pubstore-tm-1/repository/conf/axis2/
kubectl create configmap apim-pubstore-tm-1-datasources --from-file=../confs/apim-pubstore-tm-1/repository/conf/datasources/
kubectl create configmap apim-pubstore-tm-1-tomcat --from-file=../confs/apim-pubstore-tm-1/repository/conf/tomcat/

kubectl create configmap apim-pubstore-tm-2-bin --from-file=../confs/apim-pubstore-tm-2/bin/
kubectl create configmap apim-pubstore-tm-2-conf --from-file=../confs/apim-pubstore-tm-2/repository/conf/
kubectl create configmap apim-pubstore-tm-2-identity --from-file=../confs/apim-pubstore-tm-2/repository/conf/identity/
kubectl create configmap apim-pubstore-tm-2-axis2 --from-file=../confs/apim-pubstore-tm-2/repository/conf/axis2/
kubectl create configmap apim-pubstore-tm-2-datasources --from-file=../confs/apim-pubstore-tm-2/repository/conf/datasources/
kubectl create configmap apim-pubstore-tm-2-tomcat --from-file=../confs/apim-pubstore-tm-2/repository/conf/tomcat/

echo 'deploying services and volume claims ...'
kubectl create -f apim-analytics-single/wso2apim-analytics-service.yaml
kubectl create -f apim-analytics-single/wso2apim-analytics-single-service.yaml
kubectl create -f apim-analytics-single/wso2apim-analytics-h2-volume-claim.yaml
#kubectl create -f apim-analytics/wso2apim-analytics-service.yaml
#kubectl create -f apim-analytics/wso2apim-analytics-1-service.yaml
#kubectl create -f apim-analytics/wso2apim-analytics-2-service.yaml

kubectl create -f apim-pubstore-tm/wso2apim-service.yaml
kubectl create -f apim-pubstore-tm/wso2apim-pubstore-tm-1-service.yaml
kubectl create -f apim-pubstore-tm/wso2apim-pubstore-tm-2-service.yaml

kubectl create -f apim-gateway/wso2apim-gw-service.yaml
kubectl create -f apim-gateway/wso2apim-manager-worker-service.yaml

kubectl create -f apim-km/wso2apim-km-node-service.yaml
kubectl create -f apim-km/wso2apim-km-service.yaml

kubectl create -f apim-pubstore-tm/wso2apim-tm1-volume-claim.yaml
kubectl create -f apim-gateway/wso2apim-mgt-volume-claim.yaml
kubectl create -f apim-km/wso2apim-km-volume-claim.yaml

# apim km
echo 'deploying apim key manager...'
kubectl create -f apim-km/wso2apim-km-node-deployment.yaml

# analytics
sleep 30s
echo 'deploying apim analytics ...'
kubectl create -f apim-analytics-single/wso2apim-analytics-single-deployment.yaml

# apim pubstore 1
sleep 30s
echo 'deploying apim pubstore-tm-1 ...'
kubectl create -f apim-pubstore-tm/wso2apim-pubstore-tm-1-deployment.yaml

# apim pubstore 2
sleep 30s
echo 'deploying apim pubstore-tm-2 ...'
kubectl create -f apim-pubstore-tm/wso2apim-pubstore-tm-2-deployment.yaml

# apim gw
sleep 10s
echo 'deploying apim manager-worker ...'
kubectl create -f apim-gateway/wso2apim-manager-worker-deployment.yaml

#!/bin/bash

echo '-- creating service account ...'
kubectl create serviceaccount wso2svcacct

echo '-- creating persistent volumes ...'
kubectl apply -f volume/persistent-volumes.yaml

echo '-- creating services and volume claims ...'
kubectl apply -f apim-analytics/wso2apim-analytics-service.yaml
kubectl apply -f apim-analytics/wso2apim-analytics-1-service.yaml
kubectl apply -f apim-analytics/wso2apim-analytics-2-service.yaml

kubectl apply -f apim/wso2apim-mgt-volume-claim.yaml
kubectl apply -f apim/wso2apim-service.yaml
kubectl apply -f apim/wso2apim-manager-worker-service.yaml
kubectl apply -f apim/wso2apim-worker-service.yaml

echo '-- deploying apim analytics-1 ...'
kubectl apply -f apim-analytics/wso2apim-analytics-1-deployment.yaml
echo '-- waiting for 1 minute'
sleep 1m
echo '-- deploying apim analytics-2 ...'
kubectl apply -f apim-analytics/wso2apim-analytics-2-deployment.yaml
echo '-- waiting for 1 minute'
sleep 1m
echo '-- deploying apim manager-worker ...'
kubectl apply -f apim/wso2apim-manager-worker-deployment.yaml
echo '-- waiting for 1 minute'
sleep 1m
echo '-- deploying apim worker ...'
kubectl apply -f apim/wso2apim-worker-deployment.yaml

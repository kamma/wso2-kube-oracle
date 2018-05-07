#!/bin/bash

EQUA_DS=excdb01-vip-devl.equabank.loc:1523/D1GFO.equabank.loc
EQUA_PWD=oracle1
LOCAL_DS=192.168.247.129:1521/xe
LOCAL_PWD=Passw0rd

case $1 in
equa)
        find ../confs -type f -name *.xml -exec sed -i "s|<JDBC_DATASOURCE>|$EQUA_DS|g" {} +
        find ../confs -type f -name *.xml -exec sed -i "s|<JDBC_PASSWORD>|$EQUA_PWD|g" {} +
;;
local)
        find ../confs -type f -name *.xml -exec sed -i "s|<JDBC_DATASOURCE>|$LOCAL_DS|g" {} +
        find ../confs -type f -name *.xml -exec sed -i "s|<JDBC_PASSWORD>|$LOCAL_PWD|g" {} +
;;
*)
        echo don\'t know
;;
esac

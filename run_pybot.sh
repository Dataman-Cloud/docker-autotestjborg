#!/bin/bash
base_dir=$(cd `dirname $0` && pwd)
cd $base_dir
. ./config.cfg

set -x

if [ "$DEBUG" == "true" ];then
        set +e
        docker rm -f autotestborg
        docker run -i --name autotestborg $AUTOTESTBORG_IMAGE $@
        #docker run -i -v /data/docker-autotestjborg/dockerfiles/BORSP_api:/BORSP_api --name autotestborg $AUTOTESTBORG_IMAGE $@
        mkdir -p /data/offline-yumrepo/pybot
        rm -f /data/offline-yumrepo/pybot/log.html
        rm -f /data/offline-yumrepo/pybot/report.html
        docker cp autotestborg:/BORSP_api/log.html /data/offline-yumrepo/pybot/
        docker cp autotestborg:/BORSP_api/report.html /data/offline-yumrepo/pybot/
else
        docker run --rm -i $AUTOTESTBORG_IMAGE $@
fi

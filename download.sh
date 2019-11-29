#!/bin/bash
#

OFFLCAL_REPO='k8s.gcr.io'
LOCAL_REPO='registry.cn-hangzhou.aliyuncs.com/google_containers'

function download_tag_remove() {
    docker pull $LOCAL_REPO/$1 && \
    docker tag $LOCAL_REPO/$1 $OFFLCAL_REPO/$1 && \
    docker rmi $LOCAL_REPO/$1
}

download_tag_remove $1
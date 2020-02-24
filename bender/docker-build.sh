#!/usr/bin/env bash

dockerhub_user=juniorsntsid
image_version=0.3.0
image_name=bender

docker build --no-cache \
  -t ${dockerhub_user}/${image_name}:${image_version} \
  -t ${dockerhub_user}/${image_name}:latest .

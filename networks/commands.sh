#!/bin/sh

docker network create --driver bridge my_bridge

docker run -it --network my_bridge busybox sh
(ip addr)

docker run -it --network my_bridge busybox sh
(ping first ip)
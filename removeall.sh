#!/usr/bin/env bash

docker ps -qa | xargs docker rm -fv

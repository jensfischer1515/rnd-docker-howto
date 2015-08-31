#!/usr/bin/env bash

docker ps -q  | xargs docker kill

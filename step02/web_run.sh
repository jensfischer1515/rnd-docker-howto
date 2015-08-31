#!/usr/bin/env bash

echo
echo "#############################################"
echo "# building web                              #"
echo "#############################################"
docker build --no-cache=true -t "rnd/turbopress:latest" .

echo
echo "#############################################"
echo "# starting web                              #"
echo "#############################################"
docker run \
  --detach=true \
  --name=web \
  --link db:mysql \
  --publish 80:80 \
  --memory="256m" \
  rnd/turbopress

echo
echo "#############################################"
echo "# printing web logs                         #"
echo "#############################################"
docker logs -f web

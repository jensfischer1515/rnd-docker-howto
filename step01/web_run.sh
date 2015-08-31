#!/usr/bin/env bash

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
  wordpress

echo
echo "#############################################"
echo "# printing web logs                         #"
echo "#############################################"
docker logs -f web

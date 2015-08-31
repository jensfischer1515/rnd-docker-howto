#!/usr/bin/env bash

echo
echo "#############################################"
echo "# starting db                               #"
echo "#############################################"
docker run \
  --detach=true \
  --name=db \
  --env="MYSQL_ROOT_PASSWORD=root" \
  --env="MYSQL_DATABASE=wordpress" \
  --memory="512m" \
  mysql

echo
echo "#############################################"
echo "# printing db logs                          #"
echo "#############################################"
docker logs -f db

#!/bin/bash
echo "GCloud login with service key..."
(echo $GCLOUD_SERVICE_KEY | base64 -d) > project.json
gcloud auth activate-service-account --key-file=./project.json

for i in $(gcloud container images list --repository $REPOSITORY | grep $REPOSITORY); do
    printf "=================================================================\n"
    echo "Deleting image before $DELETE_DATE_BEFORE from $i....."
    ./gcrgc.sh $REPOSITORY $DELETE_DATE_BEFORE
    printf "=================================================================\n"
done
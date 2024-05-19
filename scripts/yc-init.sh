#!/bin/bash

cd $YC_VM_WORKDIR

yc lockbox payload get --id $YC_SECRETS_ID --key GARNET_USERAPI_ENV >.env

docker compose pull
docker compose up -d

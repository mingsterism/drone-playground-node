#!/bin/bash

docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_SERVER=https://github.com \
  --env=DRONE_GITHUB_CLIENT_ID=3a865b1bc3d50bbf729a \
  --env=DRONE_GITHUB_CLIENT_SECRET=34b65dd519e91233ef9f628cc0c0e68af303bd9c \
  --env=DRONE_RUNNER_CAPACITY=2 \
  --env=DRONE_SERVER_HOST=https://0962a3df.ngrok.io \
  --env=DRONE_SERVER_PROTO=https \
  --env=DRONE_TLS_AUTOCERT=true \
  --env=DRONE_USER_CREATE=username:mingerz,admin:true \
  --publish=8090:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1
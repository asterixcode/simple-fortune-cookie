#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}fortune-cookie-frontend:latest" -t "${DockerRepo}fortune-cookie-frontend:1.0-$Tag" ../frontend/
docker build -t "${DockerRepo}fortune-cookie-backend:latest" -t "${DockerRepo}fortune-cookie-backend:1.0-$Tag" ../backend/
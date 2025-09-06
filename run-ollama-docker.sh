#!/bin/bash

host_port=11434
container_port=11434

read -r -p "Do you want ollama in Docker with GPU support? (y/n): " use_gpu

docker rm -f ollama || true

# By default skip pulling the latest image to avoid network activity during automated builds.
# To allow pulling set ALLOW_OLLAMA_PULL=true in the environment.
ALLOW_PULL=${ALLOW_OLLAMA_PULL:-"false"}
if [ "${ALLOW_PULL,,}" = "true" ]; then
    docker pull ollama/ollama:latest
else
    echo "ALLOW_OLLAMA_PULL is not true — skipping 'docker pull'."
fi

docker_args="-d -v ollama:/root/.ollama -p $host_port:$container_port --name ollama ollama/ollama"

if [ "$use_gpu" = "y" ]; then
    docker_args="--gpus=all $docker_args"
fi

docker run $docker_args || true

docker image prune -f
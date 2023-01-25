ARG VARIANT="3.17"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}

RUN apk add \
  docker-cli \
  docker-cli-compose \
  curl \
  bash \
  cmd:dig 
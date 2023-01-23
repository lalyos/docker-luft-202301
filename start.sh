#!/usr/bin/env bash

echo ${TITLE:=Welcome ...} > /usr/share/nginx/html/index.html

nginx -g "daemon off;"
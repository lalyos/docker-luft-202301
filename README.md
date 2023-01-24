...

Docker Essentials Training notes 


## Database

```
docker run -d \
  --name mydb \
  --net=blue \
  -e POSTGRES_PASSWORD=secret \
  -v vipdb:/var/lib/postgresql/data \
  -v $PWD/sql:/docker-entrypoint-initdb.d  \
  postgres:15-alpine
```

## Webserver - light

Busybox as base images
```
docker run -d \
  -p 80 \
  -v $PWD:/www  \
  busybox \
    httpd -f -v -h /www
```

use alpine as base:
```
docker build -f Dockerfile.alpine -t web:alpine .
# or from git

docker build \
  -f Dockerfile.alpine \
  -t web:alpine \
  https://github.com/lalyos/docker-luft-202301.git#main
```

```
docker run -d \
  -p 80 \
  -v $PWD:/www  \
  --net=blue \
   lalyos/web:alpine \
    httpd -f -v -h /www
```


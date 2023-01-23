...




## Database

```
docker run -d \
  --name mydb \
  -e POSTGRES_PASSWORD=secret \
  -v vipdb:/var/lib/postgresql/data \
  -v $PWD/sql:/docker-entrypoint-initdb.d  \
  postgres
```
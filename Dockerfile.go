# syntax=docker/dockerfile:1

FROM golang:1.19-alpine3.17 AS build
COPY <<EOF /http.go 
package main

import (
	"net/http"
	"os"
)

func main() {
	http.ListenAndServe(":80", http.FileServer(http.FS(os.DirFS(os.Getenv("ROOT")))))
}
EOF
RUN go build -o /httpd /http.go


FROM alpine
COPY  --from=build /httpd /httpd
VOLUME [ "/www" ]
ENV ROOT=/www
EXPOSE 80
CMD [ "/httpd" ]
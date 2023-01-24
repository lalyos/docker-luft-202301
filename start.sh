#!/usr/bin/env bash

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body bgcolor="${COLOR:=lightblue}" >
    <h2>${TITLE:=Welcome}</h2>

    ${BODY:=Please use COLOR/TITLE/BODY env variables ...}
</body>
</html>
EOF

exec nginx -g "daemon off;"
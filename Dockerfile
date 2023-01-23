FROM ubuntu
RUN apt-get update -qq \
     && apt-get install -y \
       curl \
       nginx

RUN echo lunchbreak till 13:00 > /var/www/html/index.html
CMD [ "nginx", "-g", "daemon off;" ]
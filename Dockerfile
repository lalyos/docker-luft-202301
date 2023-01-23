FROM nginx

RUN echo afternon coffee > /usr/share/nginx/html/index.html
CMD [ "nginx", "-g", "daemon off;" ]
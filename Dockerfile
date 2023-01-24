FROM nginx:alpine-slim

COPY start.sh /
RUN chmod +x /start.sh
EXPOSE 80
ENTRYPOINT [ "/start.sh" ]
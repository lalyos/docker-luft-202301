#FROM nginx:alpine-slim
FROM nginx@sha256:49b61e3ddce9e2e4b639dc15b08470b9a81ef0aded80e6af056fab1ad0601d83

COPY start.sh /
RUN chmod +x /start.sh
EXPOSE 80
ENTRYPOINT [ "/start.sh" ]
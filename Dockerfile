FROM ubuntu
RUN apt-get update -qq \
     && apt-get install -y \
       curl \
       nginx
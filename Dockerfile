FROM ubuntu:22.04
LABEL maintainer="Noureddine GRASSA"
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
CMD ["echo", "Hello from gitomyapp!"]
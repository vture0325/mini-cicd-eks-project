FROM centos:centos8
LABEL maintainer="admin@example.com"

# Install NGINX
RUN dnf -y update
RUN dnf -y install nginx

# Add default configuration

EXPOSE 80

CMD ["nginx"]

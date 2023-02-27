FROM centos:centos8
LABEL maintainer="admin@example.com"

# Install NGINX
RUN dnf -y update
RUN dnf -y install nginx

# Add default configuration
COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]

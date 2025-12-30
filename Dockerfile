# Base image
FROM ubuntu:22.04

# Update packages and install Nginx
RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#Copy index.html file
COPY index.html /usr/share/nginx/html

# Expose Nginx port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

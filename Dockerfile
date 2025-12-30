# Base image
FROM ubuntu:22.04

# Update packages and install nginx & python
RUN apt-get install nginx -y && apt-get clean

#Copy index.html file
COPY index.html /usr/share/nginx/html

# Expose Nginx port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

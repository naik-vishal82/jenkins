docker build -t ubuntu-nginx:01 .
docker run -d -p 8080:80 --name ubuntu-nginx ubuntu-nginx:01

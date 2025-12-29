docker build -t nginx-web01:v01 .
docker run -d -p 8080:80 --name nginx-web01 nginx-web01:v01

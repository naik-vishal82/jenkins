docker build -t nginx-new:v01
docker run -d -p 8080:80 --name nginx-web01 nginx-new:v01 .

# Dockerized coturn TURN/STUN server

Docker container running the coturn STUN/TURN server -> https://github.com/coturn/coturn

Build and run the docker container
```
docker build . -t coturn
docker run -d --net=host -p 3478:3478 -p 3478:3478/udp coturn
```

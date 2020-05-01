## Docker build command (used to build the container in the current location specified by “.”)
`sudo docker build -t springio/medusa .`

## Docker run command
`sudo docker run -d -p 8080:8080 springio/medusa –name medusa`

## Docker list running container
`sudo docker ps`

## Docker list all containers
`sudo docker ps -a`

## Docker stop running containers
`sudo docker stop $(sudo docker container ls –filter name=medusa)`

## Docker remove container
`sudo docker rm container_id`
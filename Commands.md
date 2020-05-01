## Docker build command (used to build the container in the current location specified by “.”)
`sudo docker build --no-cache -t springio/medusa .`

## Docker run command
`sudo docker run -d –name medusa -p 8080:8080 springio/medusa`

If using volumes run this command

`docker run --name medusa -v /Users/USERNAME/Documents/temp/docker:/temp -p 8080:8080 springio/medusa`

If we want to activate a profile
docker run -d -e "SPRING_PROFILES_ACTIVE=prod" --name medusa -v /Users/USERNAME/Documents/temp/docker:/temp -p 8080:8080 springio/medusa

References 
- https://www.digitalocean.com/community/tutorials/how-to-share-data-between-the-docker-container-and-the-host
- https://spring.io/guides/gs/spring-boot-docker/

## Docker list running container
`sudo docker ps`

## Docker list all running containers
`sudo docker ps -a`

## Docker stop running containers
`sudo docker stop medusa`

## Docker start containers
`sudo docker start medusa`

## Docker remove container
`sudo docker rm container_id` or `sudo docker rm medusa`

# Other commands
Docker provides a single command that will clean up any resources — images, containers, volumes, and networks — that are dangling (not associated with a container):

`docker system prune`

To additionally remove any stopped containers and all unused images (not just dangling images), add the -a flag to the command:

`docker system prune -a`

## Remove one or more specific images
Use the docker images command with the -a flag to locate the ID of the images you want to remove. This will show you every image, including intermediate image layers. When you’ve located the images you want to delete, you can pass their ID or tag to docker rmi:

List:
- `docker images -a`

Remove:
- `docker rmi Image Image` or `docker rmi springio/medusa`


# Volumes
Create a new volume
`docker volume create myvol`

List all volumns
`docker volume ls`

Get details of the volume
`docker volume inspect myvol`

Remove selected volume
`docker volume rm myvol`

Remove all unused volume
`docker volume prune`
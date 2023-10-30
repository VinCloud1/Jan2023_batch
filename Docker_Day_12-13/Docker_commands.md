# To Install docker
- yum install docker -y

# to start the docker services
- systemctl start docker
- systemctl enable docker

# to Pull the images from Docker hub 
- docker pull "imagename"

# to see the docker images
- docker images

# to see the docker container running 
- docker ps

# to see all the container running and other stopped container 
- docker ps -a 

# to run the docker images
- docker run "imagename"

# to start the conatainer
- docker start  "container_id"


# to stop the conatainer
- docker stop "container_id"

# to remove the conatainer
- docker rm "container_id"

# to remove all the Iamges
- docker rmi -f $(docker images -q)

# to stop all the containers
- docker stop $(docker ps -q)
docker stop $(docker ps -q)


docker images -q: This command lists all the Docker images available on your system and prints only the image IDs (short hexadecimal strings).
docker rmi -f: This command removes Docker images. The -f flag forces the removal of images, even if they are currently being used by containers.
When combined, the command docker rmi -f $(docker images -q) will forcefully remove all the Docker images on your system, freeing up disk space. However, be cautious when using the -f flag, as it will remove images

# To run the Httpd docker image, if we run without the portno, this will  not work  sine the HTTPD is also running on the port 80

docker run -d -p 80:80 httpd

# To run the tomcat with  docker image -d to riun in detached mode
docker run -d --name mytomcat3 -p 8081:8080 tomcat

# To run the ubuntu docker images, this will enter the ubuntu machine
docker run -it ubuntu

# To run the container in the interactive mode (to Enter inside th e container)
docker exec -it "container_id" /bin/bash

# Start the container with the --restart flag, specifying the desired restart policy. There are several restart policies available, including no, on-failure, unless-stopped, and always. 
# In this  case, unless-stopped or always would be appropriate

docker run --restart unless-stopped <your-container-options>


# how do we copy a  file from docker client  to docker container manually?
docker cp ./filename container_id:/path/to/container/
Example:
docker cp ./Dockerfile b44eb1aab2dd:/usr/local/tomcat/temp/


# You can pack a Docker image into a tarball and then transfer it to another machine for importing. Here's how to do it:
On the Source Machine: Save the Docker image to a tarball:

- docker save -o image_name.tar image_name:tag


note: Replace image_name:tag with the name and tag of the Docker image you want to save.

Copy the tarball to the target machine using a method of your choice (e.g., SCP, USB drive, shared storage, etc.).

# On the Target Machine:

Copy the tarball to the target machine.
Load the Docker image from the tarball:

- docker load -i image_name.tar

  
Replace image_name.tar with the path to the tarball you copied.

Now, you have the Docker image available on the target machine, and you can run containers from it.


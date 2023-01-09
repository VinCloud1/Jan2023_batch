#how to install GIT on linux

# How to switch to root user 
- sudo su 

#  to update the package on the AMAZON linux
- yum update     (apt-get update) 


# to install git on AMAZON linux
- yum install git


# to list the files in tlder 
- ls

# to create a directory 
- mkdir "dir_name"
 

# change Dir

- cd "directory_path"

#  to check the present wokring directory 

- pwd

# to go back to previous folder 

- cd ..



# Git commands

# to clone the repo for first time 
- git clone "repolink"

# To pull the changes from the central/remote  repo
- git pull 

# To check the status of the Git repo
- git status 

# to Add all the working files from working area to staging area
- git add --all


# to Add  files one by one  from working area to staging area
- git add filename1,filename2


# to commit the changes
- git commit -m "message"


# to push the changes to remote server 
- git push "repolink"

# First time it will ask for Authorization , popup from github where u need to input the login details

# to pull the changes to remote server 
- git pull

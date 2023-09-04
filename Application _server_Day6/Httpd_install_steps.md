# Install Httpd
- yum install httpd -y

# to  start  the Httpd service
 - systemctl start httpd

 # to  enable the Httpd service
 - systemctl enable  httpd
 
#  Move the file  to /var/www/html folder to hots your static website 
- mv /home/ec2-user/cake-shop-website-template/* /var/www/html/


#  Move files from one linux server to other linux server by using below command 
scp -i /home/ec2-user/key.pem -r /var/jenkins/workspace/html_project_Contruction/* ec2-user@54.169.230.197:/var/www/html

# Permission needs to be updated 
   chmod 600 /home/ec2-user/key.pem      (only root shoould have read write permissions)
   chmod 777 /var/www/html                ((ec2 user shoould have read write permissions)       


# To move multiple files and directories from one location to another, overwriting any existing files with the same names in the destination directory using a single command, 
rsync -av --remove-source-files /var/jenkins/workspace/test/ /var/www/html/


Explanation of the command:

rsync: This command is used for file and directory synchronization.
-av: Options for rsync:
-a: Archive mode, which preserves permissions, timestamps, and more.
-v: Verbose mode, which shows the files being transferred.
--remove-source-files: This option tells rsync to remove the source files after a successful transfer. This effectively moves the files.

   

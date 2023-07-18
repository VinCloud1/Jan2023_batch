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

# Install Httpd
- yum install httpd -y

# to  start  the Httpd service
 - systemctl start httpd

 # to  enable the Httpd service
 - systemctl enable  httpd
 
#  Move the file  to /var/www/html folder to hots your static website 
- mv /home/ec2-user/cake-shop-website-template/* /var/www/html/

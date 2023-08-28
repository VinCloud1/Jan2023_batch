# Install Tomcat 
- wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.92/bin/apache-tomcat-8.5.92.tar.gz


# to Untar
- tar -zvxf apache-tomcat-8.5.92.tar.gz


# to install java 
yum install java-11 -y

# to start the services 

 # go to 
- cd /home/ec2-user/apache-tomcat-8.5.92/bin/
- ./startup.sh


# To update the permssions if required
- chmod +x startup.sh
- chmod +x shutdown.sh


 # to change the port no

- cd conf
- vi server.xml
- chanage the port no to 8090


# You are not authorized to view this page.

# By default the Manager is only accessible from a browser running on the same machine as Tomcat. 
# If you wish to modify this restriction, you'll need to edit the Manager's context.xml file.

- find / -name context.xml
Usually it will under 2 places, and it neeeds to be changed in both the places

- /home/ec2-user/apache-tomcat-8.5.92/webapps/host-manager/META-INF/context.xml
- /home/ec2-user/apache-tomcat-8.5.92/webapps/manager/META-INF/context.xml


# to Edit the File with vi
- vi context.xml 
- i 

# To save and exit from vi 
press (ctlt + c )
:wq


# To exit from vi without saving
:q


#  Delete below lines

Sample
.  <!--  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
.  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> 

#-->

  
  
# Update users information in the tomcat-users.xml file goto tomcat home directory and Add below users using vi tomcat-users.xml

# /home/ec2-user/apache-tomcat-8.5.92/conf/tomcat-users.xml file



<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
<user username="deployer" password="deployer" roles="manager-script"/>
<user username="tomcat" password="s3cret" roles="manager-gui"/>  


# Restart the server 
- /home/ec2-user/tomcat/apache-tomcat-8.5.82/bin/shutdown.sh
- /home/ec2-user/tomcat/apache-tomcat-8.5.82/bin/startup.sh


_________________________________________________________________________________________________________________-________________




# to check the whether  it is running 
- ps -ef | grep tomcat

# to check the permissions
ls -l 


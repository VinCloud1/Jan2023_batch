
# How to use the password less authentication

- ssh-keygen   
(This will generate the  key pair (id_rsa and id_rsa.pub)   under .ssh)



# Where to check my public key 
- cd .ssh 
- ls
- cat authorized_keys
- vi authorized_keys

# We need to copy the id_rsa.pub key to the VM's/ machine which need to be connected- hosts unders authenticatedkeys
- cd  .ssh 
- vi authorized_keys


# command to connect from one linux machine to other linux machine through ssh 
- ssh -i "private_key"  user@ipaddress

Example: ssh -i Demo_vinod_1Sep.pem ec2-user@3.89.74.234


# then ssh should work without key 
ssh user@ipaddress




# Command to install ansible 

- sudo yum update -y
- sudo amazon-linux-extras install ansible2 -y
- ansible --version




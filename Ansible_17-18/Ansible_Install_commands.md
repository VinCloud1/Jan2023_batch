# Command to install ansible 

- sudo yum update -y
- sudo amazon-linux-extras install ansible2 -y
- ansible --version

# find the host file or create it 

- vi /etc/ansible/hosts

# to remove ansible

sudo yum remove ansible


# how to run ansible shell command 
#  to check the ram utilization 

- ansible all -i hosts -m shell -a "free -m"


# how to run ansible shell command 
#  to check the disk  utilization 

- ansible all -i hosts -m shell -a "df -h"


# how to run ansible playbooks
- ansible-playbook -i "hosts" "file.yml"

example : 

1)  ansible-playbook -i hosts httpd_yum.yml

2)  ansible-playbook -i hosts docker.yml

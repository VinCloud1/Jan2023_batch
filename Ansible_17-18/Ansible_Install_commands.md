# lastest 2023 way to install ansible is below 
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

- curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
- python3 get-pip.py --user
- python3 -m pip install --user ansible

You can test that Ansible is installed correctly by checking the version:

- ansible --version

#  Upgrading Ansible To upgrade an existing Ansible installation in this Python environment to the latest released version, simply add --upgrade to the command above:

python3 -m pip install --upgrade --user ansible


# Command to install ansible 

- sudo yum update -y
- sudo amazon-linux-extras install ansible2 -y
- ansible --version

# find the host file or create it 

- vi /etc/ansible/hosts


Sample host file

[all]
172.31.29.205 ansible_user=ec2-user
172.31.18.250 ansible_user=ec2-user
172.31.24.154 ansible_user=ec2-user

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


# Refer to documentation
https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_module.html

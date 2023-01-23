# Kubernetees Commands

# To install AWS CLI 
https://aws.amazon.com/cli/

# To Install kubectl , refer below link 
https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

# aws configure (Update all the details here like Keys)
- aws configure

# Update all the details here like Keys
aws configure set aws_access_key_id AKIAWB4COEZNTOWEBB54;

aws configure set aws_secret_access_key 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; 

aws configure set default.region ap-southeast-1;

aws configure set default.output json;

# To fetch all my configuration on to my kubectl
- aws eks --region ap-southeast-1 update-kubeconfig --name K8_Vinod

#  view my configuratio
- kubectl config view

# To check the status of cluster 
- aws eks --region ap-southeast-1 describe-cluster --name K8_Vinod --query cluster.status

# To check the services running in master 
-kubectl get svc

# To check the Nodes Running 
-kubectl get nodes

# To check the pods Running 
-kubectl get pods

# To delete all the pods Running 
-kubectl delete pods --all

# To watch the Nodes 
-kubectl get nodes --watch

# To create the pod on Kubernet, We will write a  yml file and use kubectl to apply on the master
-kubectl apply -f html1.yml

-kubectl get pods

-kubectl describe

-kubectl get pod “name”


# To get teh replicas
- kubectl get rs

# to get  the deployment details
- kubectl get deployment

# to check if i delete 1 pod , what wiillhappen
- kubectl delete pod "podname'
- kubectl get pods
- kubectl get pods --output=wide

# To delete the deployments
- kubectl delete deployment project2-deployment

- kubectl delete pods --all

- kubectl get svc
- kubectl delete Service project5 (to delete load balancer)


# Note important 
# You need to expose the nodeport for this  and the open the ports in EC2 Security rules 
https://www.bmc.com/blogs/kubernetes-port-targetport-nodeport/


- kubectl expose deployment tomcat-deployment --type=NodePort
- kubectl expose deployment myapp-deployment --type=NodePort

We need enable the security group for all traffic in nodes

# aws_cloud_formation 
#set up following env
 
export AWS_ACCESS_KEY_ID=<br>
export AWS_SECRET_ACCESS_KEY=

#adjust the variables as required 

#run the ansible playbook#
#ansible-playbook aws_cloud.yml
ansible-playbook init_cloud.yml -i ec2.py -u ubuntu

# start ssh agent and the pem key to chain
ssh-agent bash<br> 
ssh-add pemfiles/filename.pem<br>

#finish NAT setup
got to the AWS console, on the VPC menu go the route table
add the new route the private subnet's route table

destination : 0.0.0.0/0<br>
target:  NAT instnce ID


# ping the web instance
#ansible -i ec2.py -m ping tag_Name_mgmtServer  -u ubuntu 


#get the external IP for the web instance from the aws console
ssh -A ubuntu@extrenal ip

git clone https://github.com/rahimre/aws_cloud_formation

cd to aws_cloud_formation/lamp_stack_minimal

ansible-playbook -i ec2.py bootstrapSite_aws.yml
ansible-playbook -i ec2.py rolling-update_aws.yml


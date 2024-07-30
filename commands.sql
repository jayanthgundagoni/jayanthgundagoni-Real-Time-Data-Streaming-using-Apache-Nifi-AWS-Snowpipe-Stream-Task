### AWS EC2 instance and security group creation
- t2.xlarge instance
- 32GB of storage recommended
- Allow ports 4000 - 38888
- Connect to ec2 via ssh

# connect to EC2
ssh -i snowflake-project.pem ec2-user<>compute.amazonaws.com

# Copy files to EC2
scp -r -i snowflake-project.pem docker-exp ec2-user<>compute.amazonaws.com:/home/ec2-user/docker_exp


- Commands to install Docker
sudo yum update -y
sudo yum install docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo gpasswd -a $USER docker
newgrp docker
sudo yum install python-pip
sudo pip install docker-compose

#Start Docker: 
sudo systemctl start docker
#Stop Docker:
sudo systemctl stop docker

#How to access tools in local machine
    List Docker containers running: docker ps
    CLI access in Docker container: docker exec -i -t nifi bash
    Jupyter Lab at: http://ip_address:4888/lab? 
    NiFi at: http://ip_address:2080/nifi/ 


### Test data preparation

docker exec -i -t nifi bash
/opt/workspace/nifi/FakeDataset/customer_(timestamp).csv 


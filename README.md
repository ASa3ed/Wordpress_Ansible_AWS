## PlayBook and cloudformation To Install Wordpress In Amazon Linux Ec2

This ansible playbook will install dockerized wordpress image on aws ec2 running amazon linux AMI.


#### - Download the git repo.

```
[gnu]$ git clone git@github.com:ASa3ed/Wordpress_Ansible_AWS.git
```

```
[gnu]$ cd Wordpress_Ansible_AWS
```

### - Edit the run.sh file as your need.

- KeyPath = private key path.

```
echo "$ip ansible_port=22  ansible_user='ec2-user'  ansible_ssh_private_key_file='./key-pair.pem'" >> hosts

### - Run Procedure

```
./create.sh cloudformation-name network.yml network-params.json

```
Wait until cloudformation complete 

Create EC2 with:
- Amazon Linux 2 AMI (ami-0518bb0e75d3619ca)
- CPU t2.micro
- Security Group ingress 
    TCP http  0.0.0.0:80
    TCP https 0.0.0.0:443
    ssh port 22  
- Volume of 16 GB 
- tag Name:wordpress


Insert EC2 IP in run.sh script $ip and run 
```
./run.sh

```
open EC2 URL ... Enjoy !

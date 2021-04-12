#### Wordpress Automate Setup BY Ansible Playbook

#### - Download the git repo.

```
[gnu]$ git clone git@github.com:ASa3ed/Wordpress_Ansible_AWS.git
[gnu]$ cd Wordpress_Ansible_AWS
```

### - Edit the hosts file as your need.

- change server IP
- ./key.pem = private key path.

```
10.10.10.10 ansible_port=22  ansible_user='ubuntu'  ansible_ssh_private_key_file='./key.pem'
```

### - Run Procedure

```
ansible-playbook playbook.yml
```
Open Server URL ... Enjoy !

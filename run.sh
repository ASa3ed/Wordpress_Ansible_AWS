# ip=$(aws ec2 describe-instances \
#               --query 'Reservations[*].Instances[*].PublicIpAddress' \
#               --filters "Name=tag:Name,Values=wordpress" \
#               --output text)

ip=34.214.110.229

echo "$ip ansible_port=22  ansible_user='ec2-user'  ansible_ssh_private_key_file='./saeed.pem'" >> hosts

ansible-playbook -i hosts playbook.yml
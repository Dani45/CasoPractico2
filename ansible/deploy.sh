# ssh-keygen
# for host in control ansible1 ansible2 ;
#     do ssh-copy-id -i ~/.ssh/id_rsa.pub $host; \
#     done

ansible all -m ping -i hosts
ansible-playbook -i hosts create_user.yml
ansible-playbook -i hosts master_node.yml
ansible-playbook -i hosts worker_nodes.yml


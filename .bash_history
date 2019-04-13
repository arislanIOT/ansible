clear
sudo -i
sudo yum install ansible
sudo amazon-linux-extras install ansible2
clear
ansible --version
cd /etc/ansible/
ls
cd
vim /etc/ansible/ansible.cfg 
vim /home/ec2-user/inventory.ini
vim /home/ec2-user/fuji-arislan.pem
chmod 400 /home/ec2-user/fuji-arislan.pem 
cat /home/ec2-user/inventory.ini 
ansible -i inventory.ini -m ping
ansible -i inventory.ini all -m ping
cat /home/ec2-user/inventory.ini 
ansible -i inventory.ini all -m ping
ansible -i inventory.ini amazon -m ping 
ansible -i inventory.ini amazon,centos -m ping 
ansible -i inventory.ini amazon -m ping 
ansible -i inventory.ini amazon,ubuntu -m ping 
ansible -i inventory.ini all -m ping
clear
cat inventory.ini 
ansible --verson
ansible --version
cat /etc/ansible/ansible.cfg 
clear
ansible -i inventory.ini amazon --list-hosts
ansible -i inventory.ini  ubuntu --list-hosts
ansible -i inventory.ini  all --list-hosts
ansible -i inventory.ini  all  -m ping
clear
ansible -i inventory.ini all  -m shell -a 'free -m'
ansible -i inventory.ini all  -m shell -a 'uptime'
ansible -i inventory.ini all  -m shell -a 'df -h'
clear
ansible -i inventory.ini amazon  -m shell -a 'yum install httpd -y'
ansible -i inventory.ini amazon -b  -m shell -a 'yum install httpd -y'
ansible -i inventory.ini amazon -b  -m shell -a 'yum remove httpd -y'
clear
ansible-doc -l
ansible-doc -l |  wc -l
ansible-doc -l |  grep yum
clear
ansible -i inventory.ini amazon -b  -m yum  -a 'name=httpd state=present'
clear
ansible -i inventory.ini amazon -b  -m service  -a 'name=httpd state=started'
clear
echo "<h1><center>Deployed From Ansible</center></h1>" > index.html
ansible -i inventory.ini amazon -b  -m copy  -a 'src=index.html dest=/var/www/html'
clear
cd /tmp/
wget https://www.tooplate.com/download/2111_pro_line -o website.tar
ls -l
tar -xf website.tar 
wget https://www.tooplate.com/download/2111_pro_line -O website.tar
tar -xf website.tar 
clear
rm -rf *
wget https://www.tooplate.com/download/2111_pro_line -o website.tar
unzip website.tar
rm -rf *
clear
wget https://www.tooplate.com/download/2111_pro_line -O website.tar
unzip website.tar
ls -l
rm -rf *
clear
wget https://www.tooplate.com/download/2111_pro_line -O website.zip
unzip website.zip
history 
ls -l
ls -l /tmp/2111_pro_line/
clear
cd
ansible -i inventory.ini amazon -b  -m copy  -a 'src=/tmp/2111_pro_line/ dest=/var/www/html/'
ansible -i inventory.ini amazon -b  -m yum  -a 'name=httpd state=absent'
clear
ansible -i inventory.ini amazon -b  -m file 'path=/var/www/html/ state=absent'
clear
ansible -i inventory.ini amazon -b  -m file 'path=/var/www/html/ state=absent'
ansible -i inventory.ini amazon -b  -m file -a  'path=/var/www/html/ state=absent'
clear
vim site-deployment.yml
ansible-playbook -i inventory.ini --syntax-check site-deployment.yml 
cat site-deployment.yml 
clear
ansible-playbook -b -i inventory.ini  site-deployment.yml 
vim site-deployment.yml
ansible-playbook -i inventory.ini  site-deployment.yml 
cat site-deployment.yml 
clear
ls -l
ansible-playbook -i inventory.ini -m ping
ansible-playbook -i inventory.ini all  -m ping
ansible  -i inventory.ini all  -m ping
dirname inventory.ini
pwd
ls -l /home/ec2-user/inventory.ini 
sudo vim /etc/ansible/ansible.cfg 
ansible all  -m ping
vim 03-01-simple.yml
ansible-playbook 03-01-simple.yml 
cat 03-01-simple.yml 
ansible amazon -m setup 
ansible amazon -m setup | grep distro
ansible amazon -m setup | grep distri
ansible amazon -m setup | grep "ansible_distribution"
ansible amazon -m setup | grep "ansible_os"
ansible amazon -m setup | grep "ansible_os_family"
ansible amazon -m setup | grep "package"
ansible amazon -m setup | grep "manager"
ansible amazon -m setup | grep "memeory"
ansible amazon -m setup | grep "memory"
ansible amazon -m setup | grep -A 15 "memory"
ansible amazon -m setup | grep -A 15 "ansible_memory_mb"
ansible amazon -m setup 
clear
ansible all -m setup | grep "ansible_os_family"
vim 03-02-os-updation.tml
vim 03-02-os-updation.yml
ansible-playbook 03-02-os-updation.yml 
ssh ec2-user@172.31.23.62
ssh -i fuji-arislan.pem ec2-user@172.31.23.62
clear
vim 03-02-os-updation.yml 
ansible-playbook 03-02-os-updation.yml 
vim 03-02-os-updation.yml 
cat 03-02-os-updation.
cat 03-02-os-updation.yml 
ansible-playbook 03-02-os-updation.yml 
clear
ansible-playbook 03-03-installing-lamp.yml
vim  03-03-installing-lamp.yml
ssh -i fuji-arislan.pem ec2-user@172.31.23.62
ssh -i fuji-arislan.pem ec2-user@172.31.20.102
vim  03-03-installing-lamp.yml
cat  03-03-installing-lamp.yml
clear
vim index.html 
vim info.php
cat index.html 
cat info.php 
ansible-playbook --syntax-check 03-03-installing-lamp.yml
ansible-playbook 03-03-installing-lamp.yml
vim  03-03-installing-lamp.yml
ansible-playbook --syntax-check 03-03-installing-lamp.yml
ansible-playbook 03-03-installing-lamp.yml
exit
clear
sudo yum install nginx
cat inventory.ini 
ssh ubuntu@172.31.23.62
ssh -i fuji-arislan.pem ubuntu@172.31.23.62
clear
mkdir /var/local
mkdir /var/local/ansible
sudo mkdir /var/local/ansible
sudo -i
clear
ansible -i inventory.ini -m ping
ansible -i inventory.ini all -m ping
vim nginx.yml
ansible-playbook -i inventory.ini nginx.yml 
vim nginx.yml
ansible-playbook -i inventory.ini nginx.yml 
clear
mkdir lamp
cp inventory.ini lamp/
ls -l lamp/
vim inventory.ini 
cd lamp/
touch .ansible.cfg
vim .ansible.cfg 
vim /etc/ansible/ansible.cfg 
sudo vim /etc/ansible/ansible.cfg 
ansible all -m ping
vim .ansible.cfg 
sudo vim /etc/ansible/ansible.cfg 
vim .ansible.cfg 
 mv .ansible.cfg ansible.cfg
ansible all -m ping
vim .ansible.cfg 
vim ansible.cfg 
clear
ansible all -m ping
cat ansible.cfg 
cat inventory.ini 
clear
cd
cp ./lamp/ansible.cfg  .
vim 04-01-variable-into.yml
ansible-playbook 04-01-variable-into.yml 
ansible all -m shell -a 'ls -l /tmp/
clear
cat 04-01-variable-into.yml 
clear
cp  04-01-variable-into.yml  04-02-debug.yml
vim 04-02-debug.yml 
cat 04-02-debug.yml 
clear
ansible-playbook 04-02-debug.yml 
cat 04-02-debug.yml 
ansible all -m debug -a 'var=ansible_os_family'
ansible --help
ansible --help | grep -i facts
ansible --help | grep -i gather
ansible all -m setup -m debug -a 'var=ansible_os_family'
clear
cp  04-02-debug.yml 04-03-debug-facts.yml
cp 04-03-debug-facts.yml 
vim 04-03-debug-facts.yml 
cat 04-03-debug-facts.yml 
ansible 04-03-debug-facts.yml 
ansible-playbook 04-03-debug-facts.yml 
clea
clear
cat 04-03-debug-facts.yml 
vim 04-03-debug-facts.yml 
ansible 04-03-debug-facts.yml 
ansible-playbook 04-03-debug-facts.yml 
clear
cat 04-03-debug-facts.yml 
ansible-playbook 04-03-debug-facts.yml 
clear
cp  04-02-debug.yml 04-04-debug-facts.yml
mv 04-04-debug-facts.yml 04-04-debug-task-status.yml
vim 04-04-debug-task-status.yml 
ansible-playbook 04-04-debug-task-status.yml 
vim 04-04-debug-task-status.yml 
ansible-playbook 04-04-debug-task-status.yml 
vim 04-04-debug-task-status.yml 
ansible-playbook 04-04-debug-task-status.yml 
cat 04-04-debug-task-status.yml 
ansible-playbook 04-04-debug-task-status.yml 
cp  04-04-debug-task-status.yml  04-05-debug-task-status.yml
vim 04-05-debug-task-status.yml 
ansible-playbook 04-05-debug-task-status.yml 
cat 04-05-debug-task-status.yml 
ansible-playbook 04-05-debug-task-status.yml 
cp  04-05-debug-task-status.yml  04-06-debug-task-status.yml
vim 04-06-debug-task-status.yml 
ansible-playbook 04-06-debug-task-status.yml 
vim 04-06-debug-task-status.yml 
clear
ansible-playbook 04-06-debug-task-status.yml 
cat 04-06-debug-task-status.yml 
[ec2-user@ip-172-31-22-59 ~]$ cat 04-06-debug-task-status.yml 
---
- name: 'Variable Introduction'
  hosts: amazon
  become: yes
  tasks:
   - name: 'Installing Httpd'
     yum:
      name: httpd
      state: present
   - name: 'Copying Contents To Doc-root And Register The Task OutPut'
     copy:
      content: '<h1><center>Site Version1 </center></h1>'
      dest: /var/www/html/index.html
     register: copy_status
   - name: 'Restart httpd based on Register values .changed status'
     when: copy_status.changed # copy_status.changed == true
     service:
      name: httpd
      state: restarted
reset
ansible-playbook 04-06-debug-task-status.yml 
clear
vim mysql-var.yml
vim 04-07-include-vars.yml
cat mysql-var.yml 
vim 04-07-include-vars.yml
ansible-playbook 04-07-include-vars.yml 
vim 04-07-include-vars.yml
ll -l mysql-var.yml
vim 04-07-include-vars.yml
ansible-playbook 04-07-include-vars.yml 
vim 04-07-include-vars.yml
ansible-playbook 04-07-include-vars.yml 
vim mysql-var.yml 
ansible-playbook 04-07-include-vars.yml 
touch mysql-var.yml 
cat mysql-var.yml 
cat 04-07-include-vars.yml 
ls -l
vim nginx.yml 
mkdir nginx
cp -r ansible.cfg nginx
mv nginx.yml nginx
cd nginx/
clear
cp ../inventory.ini .
clear
ls -l
ansible ubuntu -m shell -a 'ps aux | grep nginx'
ansible ubuntu -m shell -a 'cat /etc/nginx/nginx.conf'
vim 05-01-mysql-install.yml
clear
ls -l 
ssh -i fuji-arislan.pem ec2-user@172.31.20.102
clear
vim 05-01-mysql-install.yml 
vim mariadb-vars.yml
vim 05-01-mysql-install.yml 
vim mariadb-vars.yml
ansible-playbook 05-01-mysql-install.yml 
vim 05-01-mysql-install.yml 
ansible-playbook 05-01-mysql-install.yml 
vim 05-01-mysql-install.yml 
ansible-playbook 05-01-mysql-install.yml 
vim 05-01-mysql-install.yml 
ansible-playbook 05-01-mysql-install.yml 
ssh -i fuji-arislan.pem ec2-user@172.31.20.102
vim mysql-var.yml 
vim 05-01-mysql-install.
vim 05-01-mysql-install.yml 
ansible-playbook 05-01-mysql-install.yml 
clear
cat  mysql-var.yml 
cat  05-01-mysql-install.yml 
vim 05-01-mysql-install.yml 
ansible-playbook 05-01-mysql-install.yml 
ssh -i fuji-arislan.pem ec2-user@172.31.20.102
cat  05-01-mysql-install.yml 
vim mariadb-vars.yml 
clear
vim 05-01-mysql-install.yml 
vim 05-02-checking-rpm-is-installed.yml
clear
ansible-playbook 05-02-checking-rpm-is-installed.yml 
vim 05-02-checking-rpm-is-installed.yml
ansible-playbook 05-02-checking-rpm-is-installed.yml 
vim 05-02-checking-rpm-is-installed.yml
ansible-playbook 05-02-checking-rpm-is-installed.yml 
cat 05-02-checking-rpm-is-installed.
cat 05-02-checking-rpm-is-installed.yml 
clear
vim 06-01-handler-intro.yml
ansible-playbook -i inventory.ini 06-01-handler-intro.yml 
vim 06-01-handler-intro.yml
ansible-playbook -i inventory.ini 06-01-handler-intro.yml 
cat 06-01-handler-intro.yml 
vim 06-01-handler-intro.yml
cat 06-01-handler-intro.yml 
ansible-playbook -i inventory.ini 06-01-handler-intro.yml 
vim 06-01-handler-intro.yml
cat 06-01-handler-intro.yml 
ansible-playbook -i inventory.ini 06-01-handler-intro.yml 
cp 06-01-handler-intro.yml 06-02-handler-usage.yml
vim 06-02-handler-usage.yml 
ansible-playbook -i inventory.ini 06-02-handler-usage.yml 
vim 06-02-handler-usage.yml 
ansible-playbook -i inventory.ini 06-02-handler-usage.yml 
cat 06-02-handler-usage.yml 
vim 06-02-handler-usage.yml 
vim 06-03-handler-multiple.yml 
vim 06-02-handler-usage.yml 
vim 06-03-handler-multiple.yml 
ansible-playbook -i inventory.ini 06-03-handler-multiple.yml 
vim 06-03-handler-multiple.yml 
ansible-playbook -i inventory.ini 06-03-handler-multiple.yml 
vim 06-03-handler-multiple.yml 
ansible-playbook -i inventory.ini 06-03-handler-multiple.yml 
cat 06-03-handler-multiple.yml
ssh -i fuji-arislan.pem ec2-user@34.254.241.101
clear
mkdir include
mv include/ include-demo
cp inventory.ini include-demo/
cd include-demo/
touch redhat-update.yml
touch debian-update.yml
touch main.yml
ls -l 
mv debian-update.yml  debian-apache.yml
mv redhat-update.yml  redhat-apache.yml
ls -l
vim redhat-apache.yml 
cat redhat-apache.yml 
vim debian-apache.yml 
cat debian-apache.yml 
ansible -i inventory.ini -m setup | grep ansible_os_family
ansible -i inventory.ini all -m setup | grep ansible_os_family
vim main.yml 
cat main.yml 
ansible-playbook -i inventory.ini main.yml 
ssh -i ../fuji-arislan.pem ubuntu@172.31.23.62
ansible-playbook -i inventory.ini main.yml 
cd
mkdir wordpress
cd wordpress/
touch main.yml
touch httpd-configuration.yml
touch mysqld-configuration.yml
touch lamp-vars.yml
clear
vim lamp-vars.yml 

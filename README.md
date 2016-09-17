# Vagrant/Ansible Lamp Stack

This project is a work in progress, but it is functional. Use at your own risk
for now as the setup is extremely basic. Hopefully this helps new ansible users
like myself learning how to write playbooks.

## How to make it work

Start the Vagrant machine:
```bash
$ vagrant up
```

Stop the Vagrant machine:
```bash
$ vagrant halt
```

SSH into the Vagrant machine:
```bash
$ vagrant ssh
```

## How to access the server in the browser

After Vagrant finishes creating the virtual machine in VirtualBox and Ansible
has completed provisioning. You can access the VM in the web browser by visiting
http://lamp.local

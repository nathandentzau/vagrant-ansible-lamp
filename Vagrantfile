# Vagrant/Ansible LAMP Stack
# Nathan Dentzau <nathan.dentzau@gmail.com>

Vagrant.configure('2') do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.ssh.forward_agent = true
  config.ssh.insert_key = true

  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'lamp.local'
  config.vm.network :private_network, ip: '192.168.33.66'

  config.vm.provider :virtualbox do |vb|
    vb.cpus = 2
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.memory = 512
    vb.name = 'lamp.local'
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'ansible/playbook.yml'
  end

  config.vm.synced_folder './', '/vagrant', group: 'vagrant', owner: 'vagrant'
  config.vm.synced_folder './public', '/vagrant/public',
    owner: 'www-data',
    group: 'vagrant',
    mount_options: ['dmode=775,fmode=664']
end

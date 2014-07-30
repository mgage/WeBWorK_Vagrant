# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.host_name = "WeBWorK"
	# config.vm.provision "shell", path:  "vagrant/bootstrap.sh" # do this by hand
	config.vm.network "forwarded_port", guest: 80, host: 8888
	config.vm.network "forwarded_port", guest: 3306, host: 8889
	config.vm.network "forwarded_port", guest: 5432, host: 5433
	config.vm.synced_folder "webwork2", "/opt/webwork/webwork2",  mount_options: ['dmode=777','fmode=777']
	config.vm.synced_folder "pg", "/opt/webwork/pg",  mount_options:  ['dmode=777','fmode=777']
	config.vm.provider "virtualbox" do |v|
	  v.memory = 1024
	end
end

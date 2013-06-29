Vagrant::Config.run do |config|
    config.vm.define :webwork do |lv4_config|
        lv4_config.vm.box = "webwork"
        lv4_config.vm.host_name = "wwdevbox"
        lv4_config.vm.box_url = "/Users/Gage/WeBWorK_Vagrant/webwork2/webwork.box"
        lv4_config.vm.provision :shell, :path => "bootstrap.sh"
        #lv4_config.vm.customize ["modifyvm", :id, "--rtcuseutc", "on"]
        lv4_config.ssh.max_tries = 10
        lv4_config.vm.forward_port 80, 8888
        lv4_config.vm.forward_port 3306, 8889
        lv4_config.vm.forward_port 5432, 5433
        lv4_config.vm.host_name = "WeBWorK"
        lv4_config.vm.share_folder("www", "/opt/webwork/webwork2", "./webwork2",  :extra => 'dmode=777,fmode=777')
        #lv4_config.vm.provision :shell, :inline => "echo \"America/Denver\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"
    end
end

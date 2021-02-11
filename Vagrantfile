Vagrant.configure(2) do |config|
  config.disksize.size = '256GB'
  config.ssh.forward_agent = true
  config.vm.box = 'generic/ubuntu2004'
  config.vm.boot_timeout = 420
  config.vm.provision(:shell,
                      path: 'scripts/configure',
                      env: {TIME_ZONE: 'America/New_York'}
                     )
  config.vm.provision(:shell,
                      path: 'scripts/user-configure',
                      privileged: false
                     )
  config.vm.synced_folder '~/workspace', '/home/vagrant/workspace', create: true
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provider "virtualbox" do |v|
        v.memory = 8192
        v.cpus = 6
  end

  if ENV["GET_GRUB"]
    config.vm.provider "virtualbox" do |v|
      v.gui = true
    end
  end
end

Vagrant.configure(2) do |config|
  config.disksize.size = '256GB'
  config.ssh.forward_agent = true
  config.vm.box = 'ubuntu/bionic64'
  config.vm.provision(:shell,
                      path: 'scripts/configure',
                      env: {TIME_ZONE: 'America/Denver'})
  config.vm.provision :shell, path: 'scripts/user-configure', privileged: false
  config.vm.synced_folder './workspace', '/home/vagrant/workspace', create: true

  if ENV["GET_GRUB"]
    config.vm.provider "virtualbox" do |v|
      v.gui = true
    end
  end
end

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/bionic64'
  config.disksize.size = '256GB'
  config.vm.provision :shell, path: 'scripts/configure', env: {TIME_ZONE: 'America/Los_Angeles'}
  config.vm.provision :shell, path: 'scripts/user-configure', privileged: false
  config.vm.synced_folder './workspace', '/home/vagrant/workspace', create: true
end

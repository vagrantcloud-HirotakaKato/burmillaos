Vagrant.configure("2") do |config|
  config.vm.guest = :linux
  config.ssh.username = "rancher"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |v, override|
    v.check_guest_additions = false
    v.customize ["modifyvm", :id, "--vram", "4"]
  end
end

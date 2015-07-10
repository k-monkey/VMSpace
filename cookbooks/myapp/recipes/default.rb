#
# Cookbook Name:: myapp
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
template '/tmp/install_nvm.sh' do
  source 'install_nvm.sh.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0744'
end

template '/tmp/install_nvm_pack.sh' do
  source 'install_nvm_pack.sh.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0744'
end

execute "install nvm, node and node libraries. Will take a while..." do               
    cwd "/home/vagrant"                                                           
    user "vagrant"                                                                
    action :run   
    environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})                                                             
    command "/tmp/install_nvm_pack.sh"                  
end


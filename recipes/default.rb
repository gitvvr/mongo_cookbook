#
# Cookbook:: mymongodb
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

execute "apt-get update" do
    action    :nothing
end

execute "add gpg key" do
    command   "apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10"
    action    :nothing
end

execute 'echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list' do
end

execute 'sudo apt-get clean' do
end
    
execute 'sudo apt-get update' do
end

package "mongodb-org" do
    action    :install
    options   '--force-yes'
end


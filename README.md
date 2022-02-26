# mymongodb


TODO: Enter the cookbook description here.

1. installation of Tomdat: Refer the proces from https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-14-04

2. Steps to follow.

a.  Get the most latest package from MongoDB repository: sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

b. Add the MongoDB repository details so APT  : echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

c. update apt:  sudo apt-get update

d.  install the MongoDB package: sudo apt-get install -y mongodb-org

>> for last step- did some google to get this code.

package "mongodb-org" do
    action    :install
    options   '--force-yes'
end
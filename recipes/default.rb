#
# Cookbook Name:: blacksquarelabs-yum
# Recipe:: default
#
include_recipe 'yum'

yum_repository 'dropbox' do
  description "Dropbox repo"
  baseurl "http://linux.dropbox.com/fedora/$releasever"
  gpgkey 'https://linux.dropbox.com/fedora/rpm-public-key.asc'
  action :create
end

yum_repository 'virtualbox' do
  description "Fedora $releasever - $basearch - VirtualBox"
  baseurl "http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch"
  gpgkey 'https://www.virtualbox.org/download/oracle_vbox.asc'
  repo_gpgcheck true
  action :create
end

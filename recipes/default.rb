#
# Cookbook Name:: blacksquarelabs-yum
# Recipe:: default
#
include_recipe 'yum'

yum_repository 'dropbox' do
  description "Dropbox repo"
  baseurl "http://linux.dropbox.com/fedora/22/"
  gpgkey 'https://linux.dropbox.com/fedora/rpm-public-key.asc'
  action :create
end

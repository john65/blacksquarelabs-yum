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

yum_repository 'forensics' do
  description "CERT Forensics Tools Repository"
  baseurl "http://www.cert.org/forensics/repository/fedora/cert/$releasever/$basearch"
  gpgkey 'https://forensics.cert.org/forensics.asc'
  action :create
end

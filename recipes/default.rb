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

yum_repository 'CERT-Forensics-Tools' do
  description "CERT-Forensics-Tools"
  baseurl "https://forensics.cert.org/cert-forensics-tools-release-23.rpm"
  gpgkey 'https://forensics.cert.org/forensics.asc'
  action :create
end

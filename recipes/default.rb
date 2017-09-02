#
# Cookbook:: the_silver_searcher
# Recipe:: default
#
# Copyright:: 2017, Sean Holden, All Rights Reserved.
#

if platform?('centos')
  package 'epel-release'
  package 'the_silver_searcher'
elsif platform?('ubuntu')
  package 'silversearcher-ag'
end

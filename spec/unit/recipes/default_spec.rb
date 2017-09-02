#
# Cookbook:: the_silver_searcher
# Spec:: default
#
# Copyright:: 2017, Sean Holden, All Rights Reserved.

require 'spec_helper'

describe 'the_silver_searcher::default' do
  context 'When all attributes are default, on CentOS 7' do
    let(:platform) { 'centos' }
    let(:version) { '7.2.1511' }
    let(:chef_run) {
      ChefSpec::SoloRunner.new(platform: platform, version: version).
        converge(described_recipe)
    }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs epel-release' do
      expect(chef_run).to install_package('epel-release')
    end

    it 'installs the_silver_searcher (ag)' do
      expect(chef_run).to install_package('the_silver_searcher')
    end
  end

  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:platform) { 'ubuntu' }
    let(:version) { '16.04' }
    let(:chef_run) {
      ChefSpec::SoloRunner.new(platform: platform, version: version).
        converge(described_recipe)
    }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs silver_searcher' do
      expect(chef_run).to install_package('silversearcher-ag')
    end
  end
end

require 'spec_helper'

describe 'w_common::network' do
  describe command('sysctl net.ipv4.conf.all.arp_filter') do
    its(:stdout) { should match(/1/) }
  end
end

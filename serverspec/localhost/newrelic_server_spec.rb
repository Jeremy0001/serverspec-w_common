require 'spec_helper'

describe 'w_common::newrelic_server' do
  describe file('/etc/init.d/newrelic-sysmond') do
    it { should be_file }
    it { should be_executable }
  end
  
  describe service('newrelic-sysmond') do
    it { should be_enabled }
  end

end
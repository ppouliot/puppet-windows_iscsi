require 'spec_helper'
describe 'windows_iscsi' do

  context 'with defaults for all parameters' do
    it { should contain_class('windows_iscsi') }
  end
end

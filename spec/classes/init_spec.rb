require 'spec_helper'
describe 'swap' do

  context 'with defaults for all parameters' do
    it { should contain_class('swap') }
  end
end

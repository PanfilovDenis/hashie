require 'spec_helper'

describe Hashie::Trash do
  before(:each) do
  	@first_name = "Ivan"
    @man = Man.new(firstName: @first_name)
  end

   it 'should be get exist name' do
    expect(@first_name).to eq(@man.first_name)
  end

end
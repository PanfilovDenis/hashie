require 'spec_helper'

describe Hashie::Mash do

  before(:each) do
    p = Person.new
    @mash = Hashie::Mash.new
    @value = "test"
    @mash.defined_value = @value
  end

  it 'should be get nil if undefined key' do
    expect(nil).to eq(@mash.undefined_value)
  end

  it 'should be set and get value' do
    expect(@value).to eq(@mash.defined_value)
  end

  it 'should be get false if undefined key' do
    expect(false).to eq(@mash.undefined_value?)
  end

  it 'should be get true if defined key' do
    expect(true).to eq(@mash.defined_value?)
  end

end
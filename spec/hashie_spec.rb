require 'spec_helper'

describe Hashie do

  before(:each) do
    @mash = Hashie::Mash.new
  end

  # it 'should be nil on undefined key' do
  #   @mash.undefined
  #   # @mash.undefined.should be_nil
  # end

  it 'should be get nil if undefined key' do
    expect(nil).to eq(@mash.undefined)
  end


  it 'should be set and get value' do
    value = "test"
    @mash.defined = value
    expect(value).to eq(@mash.defined)
  end


end
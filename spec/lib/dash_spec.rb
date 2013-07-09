require 'spec_helper'

describe Hashie::Dash do
  before(:each) do
  	@name = "Stasia"
  	@new_name = "Lopatina"
  	@default = "Rubyist"
    @person = Person.new(name: @name)
  end

  it 'should be get exist name' do
    expect(@name).to eq(@person.name)
  end

  it 'should be set name' do
  	@person.name = @new_name
    expect(@new_name).to eq(@person.name)
  end

  it 'should be set default value' do
    expect(@default).to eq(@person.occupation)
  end

  it 'should be raise exeption' do
    expect {Person.new({})}.to raise_error
  end

  it 'should be raise exeption if set nil' do
    expect {@person.name = nil}.to raise_error
  end

end
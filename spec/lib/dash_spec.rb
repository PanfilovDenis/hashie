require 'spec_helper'

describe Hashie::Mash do
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
  	raise @person.ololo.inspect
    expect(@default).to eq(@person.occupation)
  end


end
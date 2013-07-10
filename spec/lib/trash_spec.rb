require 'spec_helper'

describe Hashie::Trash do
  before(:each) do
  	@first_name = "Ivan"
  	@id = "1234"
  	@creation_date = "2012-03-30 17:23:28"
    @man = Man.new(firstName: @first_name, id: @id, creation_date: @creation_date)
    p @man
  end

   it 'should be get exist name' do
     expect(@first_name).to eq(@man.first_name)
   end
   
   it 'should be get Fixnum' do
     expect(Fixnum).to eq(@man.id)
   end


end
class Person < Hashie::Dash
  property :name, required: true
  property :email
  property :occupation, default: 'Rubyist'
  property :ololo, default: 'Mimimi'
end	
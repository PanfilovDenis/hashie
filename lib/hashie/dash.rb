module Hashie
  class Dash < Hash
  	def self.property(name, params = {})
  		@defaults = {}
  		
  		define_method(name) do 
  			self[name]
  		end

  		define_method("#{name}=") do |value|
  			self[name] = value
  	    end

  	    if params.key?(:default)
           @defaults[name] = params[:default]
  	    end
    end
    
    def self.defaults
    	@defaults 
    end

    def initialize(*args)
      args.first.each do |key, value|
      	self[key] = value
      end
       
      self.class.defaults.each do |key, value|
        self[key] = value
       end
    end

  end
end
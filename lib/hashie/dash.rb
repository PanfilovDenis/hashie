module Hashie
  class Dash < Hash
    def self.property(name, params = {})
      @defaults ||= {}
      @requires ||= {}

      if params.key?(:default)
         @defaults[name] = params[:default]
      end

      if params.key?(:required) && params[:required]
        @requires[name] = true
      end

      define_method(name) do 
        self[name]
      end

      define_method("#{name}=") do |value|
        raise ArgumentError if value.nil? && @requires.key?(name)
        self[name] = value
      end

    end
    
    def self.defaults
      @defaults
    end

    def self.requires
      @requires
    end

    def initialize(args)
      args.each do |key, value|
        self[key] = value
      end
       
      self.class.defaults.each do |key, value|
        self[key] = value
       end

      self.class.requires.each do |key, value|
        raise ArgumentError if self[key].nil?
      end

    end

  end
end
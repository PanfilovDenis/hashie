module Hashie
  class Trash < Hash
    def self.property(method_name, params = {})
      define_method(name) do 
        self[name]
      end

      define_method("#{name}=") do |value|
        raise ArgumentError if value.nil? && @requires.key?(name)
        self[name] = value
      end

    end

    def initialize(args)
    end

  end
end
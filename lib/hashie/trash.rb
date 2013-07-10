module Hashie
  class Trash < Dash

    def self.property(method_name, params = {})
      super method_name, params

      @aliases ||= {}
      @lambdas ||= {}

      if params.key?(:from)
        @aliases[method_name] = params[:from]
      end

      if params.key?(:transform_with)
        @lambdas[method_name] = params[:transform_with]
      end
    end

    def self.aliases
      @aliases
    end

    def self.lambdas
      @lambdas
    end

    def initialize(args)
      super
      self.class.aliases.each do |key, value|
        self[key] = args[value]
      end
      puts "123"
      p args

    end

  end
end
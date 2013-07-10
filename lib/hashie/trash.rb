module Hashie
  class Trash < Dash

    def self.property(method_name, params = {})
      super method_name, params

      @aliases ||= {}

      if params.key?(:from)
         @aliases[method_name] = params[:from]
      end

    end

    def self.aliases
      @aliases
    end

    def initialize(args)
      self.class.aliases.each do |key, value|
        self[key] = args[value]
      end
    end

  end
end
module Hashie
  class Mash < Hash
    def method_missing(method_name, *args, &block)
      
      type = method_name[-1]
      method = method_name.to_s.chomp("=").to_sym

      case type
      when "="
        self[method] = args.first
        self.define_singleton_method("#{method}=") do
          args.first
        end
      when "?"
      else
        self.define_singleton_method(method) do
          self[method]
        end
      end
    end

    def respond_to_missing?(name, include_private = false)
      true
    end


  end
end
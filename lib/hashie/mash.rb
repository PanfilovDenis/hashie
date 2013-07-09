module Hashie
  class Mash < Hash
    def method_missing(method_name, *args, &block)
      
      type = extract_type(method_name)
      method = get_method_name(method_name)

      case type
      when "="
        self[method] = args.first
        self.define_singleton_method(method) do
          args.first
        end
      when "?"
        self.define_singleton_method("#{method}?") do
          self.key?(method)
        end
        self.key?(method)
      else
        nil
      end

    end

    def respond_to_missing?(name, include_private = false)
      true
    end

    private 

    def extract_type(method_name)
      #TODO решение влоб, надо написать регулярку
      method_name[-1]
    end

    def get_method_name(method_name)
      method_name.to_s.chomp("=").chomp("?").to_sym
    end

  end
end
module Logcamp
  module APIOperations
    module Create
      module ClassMethods
        def create(params={}, token=nil)
          response, token = Logcamp.request(:post, self.url, token, params)
          response
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end

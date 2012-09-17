require 'multi_json'
require 'rash'
module EyeEmConnector

  module Request

    def get(endpoint, options={})
      request(:get, endpoint, options)
    end

    def post(endpoint, options={})
      request(:post, endpoint, options)
    end

    def put(endpoint, options={})
      request(:put, endpoint, options)
    end

    def delete(endpoint, options={})
      request(:delete, endpoint, options)
    end

    def request(method, endpoint, options)
      connection.send(method, endpoint, options) || ''
    end
  end
  
end
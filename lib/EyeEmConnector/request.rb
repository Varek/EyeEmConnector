require 'multi_json'
require 'rash'
module EyeEmConnector

  module Request
    def request(endpoint,options={})
      response = connection.get(endpoint) do |rq|
        options.each do |option, value|
          rq.params[option] = value
        end
      end
    end
  end
  
end
module EyeEmConnector

  module Configuration

    ENDPOINT = 'https://www.eyeem.com/api/v2/'
    VALID_OPTIONS = [:client_id, :client_secret, :access_token]
    attr_accessor *VALID_OPTIONS
    
    def configure
      yield self
    end

    def options
      VALID_OPTIONS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

  end
end
module EyeEmConnector

  module Configuration

    ENDPOINT = 'https://api.eyeem.com/v2/'
    VALID_OPTIONS = [:client_id, :client_secret, :access_token, :api_version]
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
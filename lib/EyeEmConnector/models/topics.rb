module EyeEmConnector

  class Client

    module Topics
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 

      def topics(options={})
        response = request('topics',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

    end
  end
end
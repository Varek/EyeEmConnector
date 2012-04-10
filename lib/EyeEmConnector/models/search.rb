module EyeEmConnector

  class Client

    module Search
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 

      def search(options={})
        response = request('search',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

    end
  end
end
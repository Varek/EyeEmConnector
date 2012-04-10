module EyeEmConnector

  class Client

    module News
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 

      def news(options={})
        response = request('news',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def single_news(id,options={})
        response = request("news/#{id}",options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

    end
  end
end
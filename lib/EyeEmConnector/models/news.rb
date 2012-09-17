module EyeEmConnector

  class Client

    module News
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 

      def news(options={}) #access token required
        response = get('news',options)
        response.body
      end

      def single_news(id,options={}) #access token required
        response = get("news/#{id}",options)
        response.body
      end

    end
  end
end
module EyeEmConnector

  class Client

    module News
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 

      ### GET 
      def news(options={}) #access token required
        response = get('news',options)
        response.body
      end

      def single_news(id,options={}) #access token required
        response = get("news/#{id}",options)
        response.body
      end

      ### PUT 

      def mark_single_news_read(id,options={})
        response = put("news/#{id}",options,true)
      end

      ### POST 

      def mark_news_read(news_items) #news_items: ids as string, comma separated
        response = post('news',{:mark_as_read => news_items},true)
      end

    end
  end
end
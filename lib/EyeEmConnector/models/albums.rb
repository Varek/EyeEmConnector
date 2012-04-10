module EyeEmConnector

  class Client

    module Albums
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 
      def albums_recommended(options={})
        response = request('albums/recommended',options)
      end

      def albums(options={})
        response = request('albums',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def album(id,options={})
        response = request('albums/'+id.to_s,options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def album_photos(id,options={})
        response = request('albums/'+id.to_s+'/photos',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def album_likers(id,options={})
        response = request('albums/'+id.to_s+'/likers',options)

      end

      def album_contributors(id,options={})
        response = request('albums/'+id.to_s+'/contributors',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def album_liker(album_id,liker_id,options={})
        response = request("albums/#{album_id.to_s}/likers/#{liker_id}",options)
        response.status == 200
      end

      def album_contributor(id,contributer_id,options={})
        response = request("albums/#{album_id.to_s}/contributors/#{contributer_id}",options)
        response.status == 200
      end

    end
  end
end
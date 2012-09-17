module EyeEmConnector

  class Client

    module Albums
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 
      def albums_recommended(options={})
        response = get('albums/recommended',options)
        response.body
      end

      def albums(options={})
        response = get('albums',options)
        response.body
      end

      def album(id,options={})
        response = get('albums/'+id.to_s,options)
        response.body
      end

      def album_photos(id,options={})
        response = get('albums/'+id.to_s+'/photos',options)
        response.body
      end

      def album_likers(id,options={})
        response = get('albums/'+id.to_s+'/likers',options)
        response.body
      end

      def album_contributors(id,options={})
        response = get('albums/'+id.to_s+'/contributors',options)
        response.body
      end
      
      def album_liker(album_id,liker_id,options={})
        response = get("albums/#{album_id.to_s}/likers/#{liker_id}",options)
        response.status == 200
      end

      def album_contributor(album_id,contributer_id,options={})
        response = get("albums/#{album_id.to_s}/contributors/#{contributer_id}",options)
        response.status == 200
      end

    end
  end
end
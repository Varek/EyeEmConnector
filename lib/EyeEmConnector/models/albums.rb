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
        response = get("albums/#{album_id}/likers/#{liker_id}",options,true)
      end

      def album_contributor(album_id,contributer_id,options={})
        response = get("albums/#{album_id}/contributors/#{contributer_id}",options,true)
      end

      ### PUT

      # for adding photo to an album see add_photo_to_album in photos.rb

      def like_album(album_id,liker_id)
        response = put("albums/#{album_id}/likers/#{liker_id}",true)        
      end

      ### POST

      def share_album(album_id,services) #available services: twitter,facebook,tumblr as comma separated string
        response = post("albums/#{album_id}/share",options.merge(:services => services),true)
      end

      ### DELETE

      # to remove photo from an albums see remove_photo_to_album in photos.rb

      def unlike_album(album_id,liker_id)
        response = delete("albums/#{album_id}/likers/#{liker_id}",true)        
      end

    end
  end
end
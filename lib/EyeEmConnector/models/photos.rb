module EyeEmConnector

  class Client

    module Photos
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums 


      ### GET Request
      def photos(options={}) #access token needed, returns photos of authenticated user
        response = get('photos',options)
        response.body
      end

      def photo(id,options={})
        response = get('photos/'+id.to_s,options)
        response.body
      end

      def photo_likers(id,options={})
        response = get('photos/'+id.to_s+'/likers',options)
        response.body
      end

      def photo_liker(photo_id,liker_id,options={})
        response = get("photos/#{photo_id.to_s}/likers/#{liker_id}",options,true)
      end

      def photo_comments(id,options={})
        response = get('photos/'+id.to_s+'/comments',options)
        response.body
      end

      def photo_comment(photo_id,contributer_id,options={})
        response = get("photos/#{photo_id.to_s}/comments/#{contributer_id}",options)
        response.body
      end

      def photo_albums(id,options={})
        response = get('photos/'+id.to_s+'/albums',options)
        response.body
      end

      def random_photo(options={})
        response = get('api/popular/random',options)
        response.body
      end

      ### POST

      def create_photo(photo,options={}) #expects file object, valid image types not defined in the api
        response = post("photos",options.merge(:photo => photo))
        response.body
      end

      def create_photo_comment(photo_id,message,options={})
        response = post("photos/#{photo_id}/comments",options.merge(:message => message))
        response.body
      end

      def add_photo_to_topic(photo_id,topic)
        response = post("photos/#{photo_id}/topics",options.merge(:topic => topic),true)
      end

      def flag_photo(photo_id,offense)
        response = post("photos/#{photo_id}/flag",options.merge(:offense => offense),true)
      end

      def share_photo(photo_id,services) #available services: twitter,facebook,tumblr,flickr,foursquare as comma separated string
        response = post("photos/#{photo_id}/share",options.merge(:services => services),true)
      end

      ### PUT

      def update_photo(photo_id,options={})
        response = put("photos/#{photo_id}",true)        
      end

      def like_photo(photo_id,liker_id,options={})
        response = put("photos/#{photo_id}/likers/#{liker_id}",options,true)
      end

      def add_photo_to_album(photo_id,album_id)
        response = put("photos/#{photo_id}/albums/#{album_id}",true)
      end

      ### DELETE

      def delete_photo(photo_id)
        response = delete("photos/#{photo_id}",true)
      end

      def unlike_photo(photo_id,liker_id)
        response = delete("photos/#{photo_id}/likers/#{liker_id}",options,true)
      end

      def delete_photo_comment(photo_id,comment_id)
        response = delete("photos/#{photo_id}/comments/#{comment_id}",true)
      end

      def remove_photo_to_album(photo_id,album_id)
        response = delete("photos/#{photo_id}/albums/#{album_id}",true)
      end
    end
  end
end
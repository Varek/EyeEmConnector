module EyeEmConnector

  class Client

    module Users
      # for the options of different users endpoints, see https://github.com/eyeem/Public-API/wiki/users 

      def users(options={})
        response = get('users',options)
        response.body
      end

      def user(id,options={})
        response = get('users/'+id.to_s,options)
        response.body
      end

      def user_photos(id,options={})
        response = get('users/'+id.to_s+'/photos',options)
        response.body
      end

      def user_liked_photos(id,options={})
        response = get('users/'+id.to_s+'/likedPhotos',options)
        response.body
      end

      def user_friends_photos(id,options={})
        response = get('users/'+id.to_s+'/friendsPhotos',options)
        response.body
      end

      def user_liked_albums(id,options={})
        response = get('users/'+id.to_s+'/likedAlbums',options)
        response.body
      end

      def user_feed(id,options={}) #access token required
        response = get('users/'+id.to_s+'/feed',options)
        response.body
      end

      def user_discover(id,options={}) #access token required
        response = get('users/'+id.to_s+'/discover',options)
        response.body
      end

      def user_friends(id,options={})
        response = get('users/'+id.to_s+'/friends',options)
        response.body
      end

      def user_friend(user_id,friend_id,options={})
        response = get("users/#{user_id}/friends/#{friend_id}",options,true)
      end

      def user_followers(id,options={})
        response = get('users/'+id.to_s+'/followers',options)
        response.body
      end

      def user_follower(user_id,follower_id,options={})
        response = get("users/#{user_id}/followers/#{follower_id}",options,true)
      end

      def user_topics(id,options={}) #access token required
        response = get("users/#{id.to_s}/topics",options)
        response.body
      end

      def user_social_media(id,options={}) #access token required
        response = get("users/#{id.to_s}/socialMedia",options)
        response.body
      end

      def user_news_settings(id,options={}) #access token required
        response = get("users/#{id.to_s}/newsSettings",options)
        response.body
      end

      ### POST

      def set_user_news_settings(id,options={}) #access token required
        response = post("users/#{id.to_s}/newsSettings",options)
        response.body
      end

      def share_user(id,services) #available services: twitter,facebook,tumblr as comma separated string
        response = post("users/#{id}/share",options.merge(:services => services),true)
      end

      def add_friends(id,friend_ids) # friend_ids, is a comma separated list of user ids
        response = post("users/#{id}/friends",{:friend_id => friend_ids},true)
      end

      def add_social_media(id,service,options={}) #access token required, service as string(twitter,facebook,tumblr,flickr,foursquare), check api doc for options
        response = post("users/#{id.to_s}/socialMedia/#{service}", options)
        response.body
      end

      ## DELETE

      def remove_friend(id, friend_id)
        response = delete("users/#{id}/friends#{friend_id}",true)
      end

      def remove_social_media(id,service) #access token required, service as string(twitter,facebook,tumblr,flickr,foursquare)
        response = delete("users/#{id.to_s}/socialMedia/#{service}")
        response.body
      end
    end
  end
end
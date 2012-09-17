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
        response = get("users/#{user_id}/friends/#{friend_id}",options)
        response.status == 200
      end

      def user_followers(id,options={})
        response = get('users/'+id.to_s+'/followers',options)
        response.body
      end

      def user_follower(user_id,follower_id,options={})
        response = get("users/#{user_id}/followers/#{follower_id}",options)
        response.status == 200
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

    end
  end
end
module EyeEmConnector

  class Client

    module Users
      # for the options of different users endpoints, see https://github.com/eyeem/Public-API/wiki/users 

      def users(options={})
        response = request('users',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user(id,options={})
        response = request('users/'+id.to_s,options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_photos(id,options={})
        response = request('users/'+id.to_s+'/photos',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_liked_photos(id,options={})
        response = request('users/'+id.to_s+'/likedPhotos',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_friends_photos(id,options={})
        response = request('users/'+id.to_s+'/friendsPhotos',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_liked_albums(id,options={})
        response = request('users/'+id.to_s+'/likedAlbums',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_feed(id,options={})
        response = request('users/'+id.to_s+'/feed',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_friends(id,options={})
        response = request('users/'+id.to_s+'/friends',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_friend(user_id,friend_id,options={})
        response = request("users/#{user_id}/friends/#{friend_id}",options)
        response.status == 200
      end

      def user_followers(id,options={})
        response = request('users/'+id.to_s+'/followers',options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_follower(user_id,follower_id,options={})
        response = request("users/#{user_id}/followers/#{follower_id}",options)
        response.status == 200
      end

      def user_topics(id,options={})
        response = request("users/#{id.to_s}/topics",options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

      def user_social_media(id,options={})
        response = request("users/#{id.to_s}/socialMedia",options)
        Hashie::Rash.new(MultiJson.decode(response.body))
      end

    end
  end
end
module EyeEmConnector

  class Client

    module Venues

      ## GET
      def eyeem_foursquare_token
        response = get('/venues/foursquareToken')
        response.body        
      end

      ## POST
      def create_venue(service,external_id,name,location)
        response = post('/venues',{:service => service, :id => external_id, :name => name, :location => location})
        response.body
      end
    end
  end
end
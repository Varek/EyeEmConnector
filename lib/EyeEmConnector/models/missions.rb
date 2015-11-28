module EyeEmConnector

  class Client

    module Missions
      # for the options of different albums endpoints, see https://github.com/eyeem/Public-API/wiki/Albums

      def missions(options={})
        response = get('missions/lightweight',options)
        response.body
      end

    end
  end
end
require 'multi_json'

module EyeEmConnector

  module Request

    def get(endpoint, options={}, only_status=false, status_code=200)
      response = request(:get, endpoint, options)
      if only_status && response
        only_success_status(response,status_code)
      else
        response
      end
    end

    def post(endpoint, options={}, only_status=false, status_code=200)
      response = request(:post, endpoint, options)
      if only_status && response
        only_success_status(response,status_code)
      else
        response
      end
    end

    def put(endpoint, options={}, only_status=false, status_code=200)
      response = request(:put, endpoint, options)
      if only_status && response
        only_success_status(response,status_code)
      else
        response
      end
    end

    def delete(endpoint, options={}, only_status=false, status_code=200)
      response = request(:delete, endpoint, options)
      if only_status && response
        only_success_status(response,status_code)
      else
        response
      end
    end

    def request(method, endpoint, options)
      connection.send(method, endpoint, options) || ''
    end

    def only_success_status(response, status_code=200)
      if response.status == status_code
        true
      else
        response.body
      end
    end
  end

end
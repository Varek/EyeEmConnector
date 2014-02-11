require 'faraday'
require 'faraday_middleware'
require File.expand_path('../request', __FILE__)
Dir[File.expand_path('../models/*.rb', __FILE__)].each{|f| require f}

module EyeEmConnector

  class Client

    attr_accessor *Configuration::VALID_OPTIONS

    def initialize(options={})
      options = EyeEmConnector.options.merge(options)
      Configuration::VALID_OPTIONS.each do |key|
        send("#{key}=", options[key])
      end
    end

    def connection
      params = access_token.nil? ? {:client_id => @client_id} : {}
      headers = api_version.nil? ? {} : {'X-Api-Version' => @api_version}
      Faraday::Connection.new(:url => Configuration::ENDPOINT, :params => params, :headers => headers, :ssl => {:verify => false}) do |builder|
        builder.request :oauth2, @access_token unless @access_token.nil?
        builder.request :json
        builder.request :multipart
        builder.response :json
        builder.adapter Faraday.default_adapter
      end
    end

    include Request
    include EyeEmConnector::Client::Albums
    include EyeEmConnector::Client::News
    include EyeEmConnector::Client::Photos
    include EyeEmConnector::Client::Search
    include EyeEmConnector::Client::Topics
    include EyeEmConnector::Client::Users
    include EyeEmConnector::Client::Venues

  end

end
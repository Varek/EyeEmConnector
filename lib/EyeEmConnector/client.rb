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
      Faraday::Connection.new(:url => Configuration::ENDPOINT, :params => {:client_id => @client_id}, :ssl => {:verify => false}) #do |builder|
        #builder.use FaradayMiddleware::EncodeJson
        #builder.use FaradayMiddleware::Rashify
        #builder.use FaradayMiddleware::ParseJson, :content_type => 'application/json'
      #end
    end

    include Request
    include EyeEmConnector::Client::Albums
    include EyeEmConnector::Client::News
    include EyeEmConnector::Client::Photos
    include EyeEmConnector::Client::Search
    include EyeEmConnector::Client::Topics
    include EyeEmConnector::Client::Users

  end
  
end
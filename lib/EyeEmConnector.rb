require File.expand_path('../EyeEmConnector/configuration', __FILE__)
require File.expand_path('../EyeEmConnector/client', __FILE__)

module EyeEmConnector
  extend Configuration
  def self.client(options={})
    EyeEmConnector::Client.new(options)
  end

  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method)
    return client.respond_to?(method) || super
  end


end
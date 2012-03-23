module Cleo
  @@net_http = nil

  def self.net_http
    @@net_http unless @@net_http.blank?
    uri = URI.parse(Cleo::Server.url)

    @@net_http = Net::HTTP.new(uri.host, uri.port)
  end

  def self.get(uri)
    response = net_http.request(Net::HTTP::Get.new(uri.request_uri))

    return response if good_response_code?(response)
  end

  def self.find(id)
    #query by element/id to get from cleo fast
    uri = URI.parse(Cleo::Server.url + "#{id}")
    response = self.get(uri)

    return nil if response.body.blank?

    Cleo::Result.parse(response.body, :single => true)
  end

  def self.query(query_param)
    uri = URI.parse(Cleo::Server.url + "search?query=#{CGI::escape query_param}")
    response = self.get(uri)

    Cleo::Result.parse(response.body, :single => false)
  end


  def self.update(obj)
    obj = obj.to_cleo_result unless obj.is_a?(Cleo::Result)

    uri = URI.parse Cleo::Server.url + "#{obj.id}"
    request = Net::HTTP::Put.new(uri.path)

    request.content_type = 'application/xml'
    request.body = obj.to_xml
    response = Net::HTTP.new(uri.host, uri.port).start { |http| http.request request }

    return good_response_code?(response)
  end

  def self.delete(obj_or_id)
    cleo_id = nil
    if obj_or_id.is_a?(Cleo::Result)
      cleo_id = obj_or_id.id
    elsif obj_or_id.is_a?(Fixnum)
      cleo_id = obj_or_id
    elsif obj_or_id.responds_to?("cleo_id")
      cleo_id = obj_or_id.cleo_id
    end

    uri = URI.parse Cleo::Server.url + "#{cleo_id}"
    request = Net::HTTP::Delete.new(uri.path)

    response = Net::HTTP.new(uri.host, uri.port).start { |http| http.request request }

    return good_response_code?(response)
  end

  def self.create(obj)
    obj = obj.to_cleo_result unless obj.is_a?(Cleo::Result)

    uri = URI.parse Cleo::Server.url + "_"
    request = Net::HTTP::Post.new(uri.path)

    request.body = obj.to_xml
    request.content_type = 'application/xml'

    response = Net::HTTP.new(uri.host, uri.port).start { |http| http.request request }

    return good_response_code?(response)
  end

  private
  def self.good_response_code?(response)
    case response
    when Net::HTTPOK
      true   # success response
    when Net::HTTPClientError, Net::HTTPInternalServerError
      false  # non-success response
    end
  end
end

#require Result Class
require 'cleo/server'
require 'cleo/result'
require 'cleo/reference'

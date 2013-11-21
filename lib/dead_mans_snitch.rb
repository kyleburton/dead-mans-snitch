require 'rubygems'
require 'net/http'
require 'net/https'
require 'uri'

class DeadMansSnitch
  def self.report snitch_id, message=nil
    begin
      dead_mans_snitch_url = "https://nosnch.in/#{snitch_id}"
      uri                  = URI.parse(dead_mans_snitch_url)
      http                 = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl         = true
      http.verify_mode     = OpenSSL::SSL::VERIFY_NONE
      request              = Net::HTTP::Post.new(uri.request_uri)
      request.set_form_data( "m" => message )
      response             = http.request(request)
    rescue Exception => e
    end
  end
end

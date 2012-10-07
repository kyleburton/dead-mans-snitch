require 'rubygems'
require 'net/http'
require 'net/https'
require 'uri'

class DeadMansSnitch
  def self.report snitch_id
    dead_mans_snitch_url = "https://nosnch.in/#{snitch_id}"
    uri                  = URI.parse(dead_mans_snitch_url)
    http                 = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl         = true
    http.verify_mode     = OpenSSL::SSL::VERIFY_NONE
    request              = Net::HTTP::Get.new(uri.request_uri)
    response             = http.request(request)
  end
end

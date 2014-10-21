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
      false
    end
  end

  def self.report_with_time snitch_id
    start = Time.now
    result = yield
    finish = Time.now

    report snitch_id, "Took: #{Utils.seconds_to_human(finish - start)}, #{result}"
  end

  module Utils
    def self.seconds_to_human seconds
      raise ArgumentError if seconds.nil? || seconds < 0

      seconds = seconds.to_i
      hours = seconds / 3600
      seconds = seconds % 3600
      minutes = seconds / 60
      seconds = seconds % 60

      "#{hours}h #{minutes}m #{seconds}s"
    end
  end
end

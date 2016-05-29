require "geocoder_simple/version"
require 'net_http'
require 'uri'
require 'json'

class GeocoderSimple
  attr_reader :lng
  attr_reader :lat

  def initialize(address = nil)
    @address = address
    @lng = nil
    @lat = nil
    get_lng_and_lat(@address)
  end

  def address
    @address
  end

  def address=(address)
    @address = address
    get_lng_and_lat
  end

  def get_lng_and_lat(address)
    if !address.to_s.empty?
      url = URI.parse(URI.escape("http://maps.google.com/maps/api/geocode/json?&address=\"#{address}\"&sensor=false"))
      json = Net::HTTP.get(url)
      data = JSON.parse(json)
      @lng = data['result'][0]['geometry']['location']['lng']
      @lat = data['result'][0]['geometry']['location']['lat']
    end
  end
end

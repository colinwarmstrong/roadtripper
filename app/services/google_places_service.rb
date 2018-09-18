class GooglePlacesService
  def initialize(latitude, longitude, radius = 10000, type = 'lodging')
    @latitude  = latitude
    @longitude = longitude
    @radius = radius
    @type = type
  end

  def get_lodging_options
    parse_json[:results]
  end

  private
  attr_reader :latitude, :longitude, :radius, :type

  def conn
    Faraday.new(url: 'https://maps.googleapis.com/maps/api/')
  end

  def response
    conn.get("place/nearbysearch/json?key=#{ENV['GOOGLE_MAPS_API_KEY']}&location=#{latitude},#{longitude}&radius=#{radius}&type=#{type}&rankby=prominence")
  end

  def parse_json
    JSON.parse(response.body, symbolize_names: true)
  end
end

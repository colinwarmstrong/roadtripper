class WeatherService
  def initialize(latitude, longitude)
    @latitude  = latitude
    @longitude = longitude
  end

  def get_weather_info
    parse_json
  end

  private
  attr_reader :latitude, :longitude

  def conn
    Faraday.new(url: 'https://api.darksky.net/')
  end

  def response
    conn.get("forecast/#{ENV['DARK_SKY_KEY']}/#{latitude},#{longitude}")
  end

  def parse_json
    JSON.parse(response.body, symbolize_names: true)
  end
end

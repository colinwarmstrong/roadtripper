class WeatherPresenter
  def initialize(latitude, longitude)
    @latitude  = latitude
    @longitude = longitude
  end

  def summary
    weather_info[:summary]
  end

  def temperature
    weather_info[:temperature]
  end

  def humidity
    weather_info[:humidity]
  end

  def precipitation
    weather_info[:precipProbability]
  end

  private
  attr_reader :latitude, :longitude

  def weather_info
    @weather_info ||= WeatherService.new(latitude, longitude).get_weather_info[:currently]
  end
end

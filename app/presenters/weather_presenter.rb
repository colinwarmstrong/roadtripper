class WeatherPresenter
  def initialize(latitude, longitude)
    @latitude  = latitude
    @longitude = longitude
  end

  def summary
    weather_info[:currently][:summary]
  end

  def temperature
    weather_info[:currently][:temperature]
  end

  def humidity
    weather_info[:currently][:humidity]
  end

  def precipitation
    weather_info[:currently][:precipProbability]
  end

  private
  attr_reader :latitude, :longitude

  def weather_info
    @weather_inf = WeatherService.new(latitude, longitude).get_weather_info
  end
end

require 'rails_helper'

describe WeatherService do
  describe 'Instance Methods' do
    context '#get_weather_info' do
      it 'returns the correct weather information', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        service = WeatherService.new(latitude, longitude)

        weather_info = service.get_weather_info

        expect(weather_info).to have_key(:currently)
        expect(weather_info[:currently]).to have_key(:summary)
        expect(weather_info[:currently]).to have_key(:temperature)
        expect(weather_info[:currently]).to have_key(:humidity)
        expect(weather_info[:currently]).to have_key(:precipProbability)
      end
    end
  end
end

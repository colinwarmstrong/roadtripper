require 'rails_helper'

describe WeatherPresenter do
  it 'exists' do
    latitude  = '37.7792808'
    longitude = '-122.4192363'

    presenter = WeatherPresenter.new(latitude, longitude)

    expect(presenter).to be_a(WeatherPresenter)
  end

  describe 'Instance Methods' do
    context '#summary' do
      it 'returns the correct weather summary', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        presenter = WeatherPresenter.new(latitude, longitude)

        summary = presenter.summary

        expect(summary).to eq('Partly Cloudy')
      end
    end

    context '#temperature' do
      it 'returns the correct temperature', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        presenter = WeatherPresenter.new(latitude, longitude)

        temperature = presenter.temperature

        expect(temperature).to eq(64.32)
      end
    end

    context '#humidity' do
      it 'returns the correct humidity', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        presenter = WeatherPresenter.new(latitude, longitude)

        humidity = presenter.humidity

        expect(humidity).to eq(0.65)
      end
    end

    context '#summary' do
      it 'returns the correct precipitation', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        presenter = WeatherPresenter.new(latitude, longitude)

        precipitation = presenter.precipitation

        expect(precipitation).to eq(0)
      end
    end
  end
end

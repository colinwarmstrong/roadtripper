require 'rails_helper'

describe LodgingPresenter do
  describe 'Instance Methods' do
    context '#lodging_options' do
      it 'returns the correct lodging options', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        presenter = LodgingPresenter.new(latitude, longitude)

        lodging_options = presenter.lodging_options
        hotel = lodging_options.first

        expect(lodging_options).to be_an(Array)
        expect(hotel).to be_a(Hotel)
        expect(hotel.name).to eq('The Clift Royal Sonesta Hotel')
        expect(hotel.rating).to eq(4.1)
        expect(hotel.address).to eq('495 Geary Street, San Francisco')
      end
    end
  end
end

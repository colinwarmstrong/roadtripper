require 'rails_helper'

describe GooglePlacesService do
  describe 'Instance Methods' do
    context '#get_lodging_options' do
      it 'returns the correct lodging options', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        service = GooglePlacesService.new(latitude, longitude)

        lodging_options = service.get_lodging_options
        hotel = lodging_options.first

        expect(lodging_options).to be_an(Array)
        expect(hotel).to have_key(:name)
        expect(hotel).to have_key(:rating)
        expect(hotel).to have_key(:vicinity)
      end
    end
  end
end

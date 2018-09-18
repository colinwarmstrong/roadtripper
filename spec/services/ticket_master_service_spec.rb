require 'rails_helper'

describe TicketMasterService do
  describe 'Instance Methods' do
    context '#get_activity_info' do
      it 'returns the correct activity info', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        service = TicketMasterService.new(latitude, longitude)

        activity_info = service.get_activity_info
        activity = activity_info.first

        expect(activity_info).to be_an(Array)
        expect(activity).to have_key(:name)
        expect(activity[:classifications][0][:segment]).to have_key(:name)
        expect(activity).to have_key(:url)
      end
    end
  end
end

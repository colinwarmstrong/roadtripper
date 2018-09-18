require 'rails_helper'

describe ActivitiesPresenter do
  describe 'Instance Methods' do
    context '#lodging_options' do
      it 'returns the correct lodging options', :vcr do
        latitude  = '37.7792808'
        longitude = '-122.4192363'

        presenter = ActivitiesPresenter.new(latitude, longitude)

        activity_options = presenter.activity_options
        activity = activity_options.first

        expect(activity_options).to be_an(Array)
        expect(activity).to be_an(Activity)
        expect(activity.name).to eq('Paul McCartney')
        expect(activity.type).to eq('Music')
        expect(activity.url).to eq('https://www.ticketmaster.com/paul-mccartney-tickets/artist/735610')
      end
    end
  end
end

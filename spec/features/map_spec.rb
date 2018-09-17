require 'rails_helper'

describe 'A registered user' do
  context 'visiting /map' do
    it 'can create a trip by filling in the required fields' do
      user = User.create!(provider: "google_oauth2",
                          uid: "112748035832796518381",
                          email: "colinwarmstrong@gmail.com",
                          first_name: "Colin",
                          last_name: "Armstrong",
                          photo: "https://lh5.googleusercontent.com/-GeDOv0sdE4c/AAAAAAAAAAI/AAAAAAAAAI0/0nAevyxbB_M/photo.jpg",
                          token: ENV['USER_TOKEN'],
                          )

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit map_path

      first('#start_location', visible: false).set('Denver, Colorado, United States')
      first('#end_location', visible: false).set('Chicago, Illinois, United States')
      first('#trip_distance', visible: false).set('1003mi')
      fill_in :trip_title, with: 'Sweet Home Chicago'
      fill_in :trip_days, with: '7'
      fill_in :trip_buddies, with: '4'

      click_on 'Create Trip'

      expect(current_path).to eq(dashboard_path)
      expect(user.trips.count).to eq(1)

      expect(page).to have_css('.trip-main', count: 1)
      
      within('.trip-main') do
        expect(page).to have_content('Sweet Home Chicago')
        expect(page).to have_content('7 days')
        expect(page).to have_content('1003 mi')
        expect(page).to have_content('4 buddies')
      end
    end
  end
end

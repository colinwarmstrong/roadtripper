require 'rails_helper'

describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :provider }
    it { should validate_presence_of :uid }
    it { should validate_presence_of :email }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :photo }
    it { should validate_presence_of :token }
    it {should have_many :trips}
  end

  describe 'Class Methods' do
    context '.create_with_omniauth' do
      it 'creates a new user from an oauth hash' do
        auth = {
          'provider' => "google",
          'uid' => "12345678910",
          'info' => {
            'email' => "test@email.com",
            'first_name' => "Jimmy",
            'last_name' => "Smith",
            'image' => 'test_image.jpg'
          },
          'credentials' => {
            'token' => "abcdefg12345",
            'refresh_token' => "12345abcdefg",
            'expires_at' => DateTime.now
          }
        }

        User.create_with_omniauth(auth)

        new_user = User.last

        expect(new_user.provider).to eq('google')
        expect(new_user.uid).to eq('12345678910')
        expect(new_user.email).to eq('test@email.com')
        expect(new_user.first_name).to eq('Jimmy')
        expect(new_user.last_name).to eq('Smith')
        expect(new_user.photo).to eq('test_image.jpg')
        expect(new_user.token).to eq('abcdefg12345')
      end
    end
  end

  describe 'Instance Methods' do
    before :each do
      @user = User.create!(provider: "google_oauth2",
                          uid: "112748035832796518381",
                          email: "colinwarmstrong@gmail.com",
                          first_name: "Colin",
                          last_name: "Armstrong",
                          photo: "https://lh5.googleusercontent.com/-GeDOv0sdE4c/AAAAAAAAAAI/AAAAAAAAAI0/0nAevyxbB_M/photo.jpg",
                          token: ENV['USER_TOKEN'],
                          )

      @trip_1 = @user.trips.create!(title: 'Cali Bros: A West Coast Adventure',
                         days: 6,
                         distance: 890,
                         buddies: 4,
                         start_location: [34.0536834, -118.2427669],
                         end_location: [37.7792808, -122.4192363])

      @trip_2 = @user.trips.create!(title: 'Into the Corn: A Midwestern Excursion',
                        days: 8,
                        distance: 1236,
                        buddies: 2,
                        start_location: [39.7391428, -104.984696],
                        end_location: [42.3486635, -83.0567375])

      @trip_3 = @user.trips.create!(title: 'Gator Boys: A Journey Through Florida',
                        days: 4,
                        distance: 632,
                        buddies: 3,
                        start_location: [33.7490987, -84.3901849],
                        end_location: [25.7742658, -80.1936589])
    end

    context '#trips_count' do
      it 'returns the number of trips for a user' do
        expect(@user.trip_count).to eq(3)
      end
    end

    context '#total_trip_distance' do
      it 'returns the summed distance of all trips for a user' do
        expect(@user.total_trip_distance).to eq(2758)
      end
    end

    context '#ordered_trips' do
      it 'returns all trips in descending order of created at time' do
        expect(@user.ordered_trips).to eq([@trip_3, @trip_2, @trip_1])
      end
    end

    context '#total_states', :vcr do
      it "returns the total number of states a user's trips have visited" do
        expect(@user.total_states).to eq(5)
      end
    end

    context '#buddy_count' do
      it 'returns the number of buddies a user has gone on trips with' do
        expect(@user.buddy_count).to eq(6)
      end
    end
  end
end

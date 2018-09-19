user = User.create!(provider: "google_oauth2",
                    uid: "112748035832796518381",
                    email: "colinwarmstrong@gmail.com",
                    first_name: "Colin",
                    last_name: "Armstrong",
                    photo: "https://lh5.googleusercontent.com/-GeDOv0sdE4c/AAAAAAAAAAI/AAAAAAAAAI0/0nAevyxbB_M/photo.jpg",
                    token: ENV['USER_TOKEN'],
                    )

trip_1 = user.trips.create!(title: "Surf's Up: A West Coast Adventure",
                   days: 6,
                   distance: 384,
                   buddies: 4,
                   start_location: Geocoder.search('Los Angeles').first.coordinates,
                   end_location: Geocoder.search('San Francisco').first.coordinates)

trip_1.photos.create(source: 'https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_1.photos.create(source: 'https://images.pexels.com/photos/360698/pexels-photo-360698.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_1.photos.create(source: 'https://images.pexels.com/photos/1412235/pexels-photo-1412235.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_1.photos.create(source: 'https://images.pexels.com/photos/358383/pexels-photo-358383.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')

trip_2 = user.trips.create!(title: 'Into the Corn: A Midwestern Excursion',
                  days: 8,
                  distance: 1268,
                  buddies: 2,
                  start_location: Geocoder.search('Denver').first.coordinates,
                  end_location: Geocoder.search('Detroit').first.coordinates)

trip_2.photos.create(source: 'https://images.pexels.com/photos/776614/pexels-photo-776614.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_2.photos.create(source: 'https://images.pexels.com/photos/206893/pexels-photo-206893.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_2.photos.create(source: 'https://images.pexels.com/photos/161963/chicago-illinois-skyline-skyscrapers-161963.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_2.photos.create(source: 'https://images.pexels.com/photos/220002/pexels-photo-220002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')

trip_3 = user.trips.create!(title: 'Gator Boys: A Journey Through Florida',
                  days: 4,
                  distance: 662,
                  buddies: 3,
                  start_location: Geocoder.search('Atlanta').first.coordinates,
                  end_location: Geocoder.search('Miami').first.coordinates)

trip_3.photos.create(source: 'https://images.pexels.com/photos/411217/pexels-photo-411217.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_3.photos.create(source: 'https://images.pexels.com/photos/810726/pexels-photo-810726.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_3.photos.create(source: 'https://images.pexels.com/photos/449627/pexels-photo-449627.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_3.photos.create(source: 'https://images.pexels.com/photos/662994/pexels-photo-662994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')

trip_4 = user.trips.create!(title: 'Lobster Fest: A Relaxing Trip to Maine',
                  days: 5,
                  distance: 1210,
                  buddies: 2,
                  start_location: Geocoder.search('Chicago').first.coordinates,
                  end_location: Geocoder.search('Bangor, Maine').first.coordinates)

trip_4.photos.create(source: 'https://images.pexels.com/photos/189243/pexels-photo-189243.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_4.photos.create(source: 'https://images.pexels.com/photos/566345/pexels-photo-566345.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_4.photos.create(source: 'https://images.pexels.com/photos/247506/pexels-photo-247506.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_4.photos.create(source: 'https://images.pexels.com/photos/289319/pexels-photo-289319.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')


trip_5 = user.trips.create!(title: 'Sin City: A Weekend in Vegas',
                  days: 3,
                  distance: 270,
                  buddies: 6,
                  start_location: Geocoder.search('Los Angeles').first.coordinates,
                  end_location: Geocoder.search('Las Vegas').first.coordinates)

trip_5.photos.create(source: 'https://images.pexels.com/photos/415999/pexels-photo-415999.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_5.photos.create(source: 'https://images.pexels.com/photos/161772/las-vegas-nevada-cities-urban-161772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_5.photos.create(source: 'https://images.pexels.com/photos/812628/pexels-photo-812628.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
trip_5.photos.create(source: 'https://images.pexels.com/photos/6534/holiday-vacation-hotel-luxury.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350')

trip_6 = user.trips.create!(title: 'BBQ Boys: The Texas Takeover',
                  days: 9,
                  distance: 741,
                  buddies: 4,
                  start_location: Geocoder.search('El Paso').first.coordinates,
                  end_location: Geocoder.search('Houston').first.coordinates)

trip_6.photos.create(source: 'https://images.pexels.com/photos/764998/pexels-photo-764998.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_6.photos.create(source: 'https://images.pexels.com/photos/1105325/bbq-meet-eating-diner-1105325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_6.photos.create(source: 'https://images.pexels.com/photos/280193/pexels-photo-280193.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
trip_6.photos.create(source: 'https://images.pexels.com/photos/1069731/pexels-photo-1069731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')

puts "Created #{User.count} users"
puts "Created #{Trip.count} trips"

class TripsController < ApplicationController
  def show
    @trip = current_user.trips.find(trip_params[:id])
    @start_weather = WeatherPresenter.new(@trip.start_location.x, @trip.start_location.y)
    @end_weather = WeatherPresenter.new(@trip.end_location.x, @trip.end_location.y)
  end

  def create
    trip = current_user.trips.create(trip_information)
    assign_default_photos(trip)
    redirect_to dashboard_path
  end

  private

  def trip_params
    params.permit(:trip_title, :trip_days, :trip_buddies, :start_location, :end_location, :trip_distance, :trip_time, :id)
  end

  def assign_default_photos(trip)
    trip.photos.create(source: 'https://images.pexels.com/photos/533671/pexels-photo-533671.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
    trip.photos.create(source: 'https://images.pexels.com/photos/764293/pexels-photo-764293.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
    trip.photos.create(source: 'https://images.pexels.com/photos/1165981/pexels-photo-1165981.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
    trip.photos.create(source: 'https://images.pexels.com/photos/490411/pexels-photo-490411.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350')
  end

  def trip_information
    {title: trip_params[:trip_title],
     distance: distance,
     days: trip_params[:trip_days],
     buddies: trip_params[:trip_buddies],
     start_location: start_location,
     end_location: end_location,
     }
  end

  def distance
    trip_params[:trip_distance].delete('mi').to_i
  end

  def start_location
    results = Geocoder.search(params[:start_location])
    results.first.coordinates
  end

  def end_location
    results = Geocoder.search(params[:end_location])
    results.first.coordinates
  end
end

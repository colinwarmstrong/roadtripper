class LodgingPresenter
  def initialize(latitude, longitude)
    @latitude  = latitude
    @longitude = longitude
  end

  def lodging_options
    lodging_info.map do |hotel_info|
      Hotel.new(hotel_info)
    end
  end


  private
  attr_reader :latitude, :longitude

  def lodging_info
    @lodging_info ||= GooglePlacesService.new(latitude, longitude).get_lodging_options.shift(5)
  end
end

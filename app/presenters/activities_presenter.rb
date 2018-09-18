class ActivitiesPresenter
  def initialize(latitude, longitude)
    @latitude  = latitude
    @longitude = longitude
  end

  def activity_options
    activity_info.map do |activity_info|
      Activity.new(activity_info)
    end
  end

  private
  attr_reader :latitude, :longitude

  def activity_info
    @activity_info ||= TicketMasterService.new(latitude, longitude).get_activity_info.shift(5)
  end
end

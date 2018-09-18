class TicketMasterService
  def initialize(latitude, longitude, radius = 10)
    @latitude  = latitude
    @longitude = longitude
    @radius    = radius
  end

  def get_activity_info
    parse_json[:_embedded][:attractions]
  end

  private
  attr_reader :latitude, :longitude, :radius

  def conn
    Faraday.new(url: 'https://app.ticketmaster.com/discovery/v2/')
  end

  def response
    conn.get("suggest.json?apikey=#{ENV['TICKETMASTER_API_KEY']}&latlong=#{latitude},#{longitude}&radius=#{radius}")
  end

  def parse_json
    JSON.parse(response.body, symbolize_names: true)
  end
end

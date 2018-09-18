class Activity
  attr_reader :name, :type, :url

  def initialize(activity_info)
    @name = activity_info[:name]
    @type = activity_info[:classifications][0][:segment][:name]
    @url  = activity_info[:url]
  end
end

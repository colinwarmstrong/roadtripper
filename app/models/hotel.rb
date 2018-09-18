class Hotel
  attr_reader :name, :rating, :address
  
  def initialize(hotel_info)
    @name    = hotel_info[:name]
    @rating  = hotel_info[:rating]
    @address = hotel_info[:vicinity]
  end
end

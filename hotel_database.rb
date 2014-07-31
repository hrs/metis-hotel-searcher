require "csv"

require_relative "hotel"
require_relative "null_hotel"

class HotelDatabase
  def initialize(csv_filename)
    @hotels = CSV.table(csv_filename).map { |row| Hotel.new(row) }
  end

  def hotel_with_name(hotel_name)
    @hotels.find { |hotel| hotel.name == hotel_name } || NullHotel.new
  end
end

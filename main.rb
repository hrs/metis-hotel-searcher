require_relative "hotel_database"
require_relative "hotel_search_engine"

db = HotelDatabase.new("hotels.csv")
HotelSearchEngine.new(db).prompt

class HotelSearchEngine
  def initialize(hotel_database)
    @hotel_database = hotel_database
  end

  def prompt
    loop do
      query = prompt_for_hotel_name
      print_results(hotel_database.hotel_with_name(query))
    end
  end

  private

  attr_reader :hotel_database

  def prompt_for_hotel_name
    print "What property? > "
    gets.chomp
  end

  def print_results(hotel)
    puts
    puts hotel
    puts
  end
end

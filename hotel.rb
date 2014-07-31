require_relative "digit_extractor"
require_relative "phone_number"

class Hotel
  attr_reader :name

  def initialize(options)
    @name = options[:hotel].strip
    @phone_number = PhoneNumber.new(options[:phone_number])
    @location = options[:city].strip
    @number_of_rooms = count_rooms(options)
  end

  def to_s
    "Phone number: #{phone_number}\n" +
      "Location: #{location}\n" +
      "Number of rooms: #{number_of_rooms}"
  end

  private

  attr_reader :phone_number, :location, :number_of_rooms

  def count_rooms(options)
    DigitExtractor.new(options.fetch(:number_of_singles, 0).to_s).extract_int +
      DigitExtractor.new(options.fetch(:number_of_doubles, 0).to_s).extract_int
  end
end

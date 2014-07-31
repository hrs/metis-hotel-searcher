require_relative "digit_extractor"

class PhoneNumber
  def initialize(raw_number)
    @number = DigitExtractor.new(raw_number.to_s).extract
  end

  def to_s
    "(#{area_code}) #{central_office_code}-#{station_number}"
  end

  private

  def area_code
    number[0, 3]
  end

  def central_office_code
    number[3, 3]
  end

  def station_number
    number[6, 4]
  end

  attr_reader :number
end

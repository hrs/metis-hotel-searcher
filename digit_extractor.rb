class DigitExtractor
  def initialize(str)
    @str = str
  end

  def extract_int
    extract.to_i
  end

  def extract
    @str.chars.select { |char| is_digit?(char) }.join
  end

  private

  def is_digit?(char)
    char =~ /\d/
  end
end

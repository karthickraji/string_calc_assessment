class StringCalculator
  def add(string_numbers)
    numbers = extract_numbers_from_string(string_numbers)
    numbers.map(&:to_i).sum
  end

  def extract_numbers_from_string(string_numbers)
    string_numbers.split(/\b/)
  end
end

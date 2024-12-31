class StringCalculator
  def add(string_numbers)
    return string_numbers.to_i if string_numbers.empty?
    if not string_numbers.empty?
      return string_numbers.to_i if string_numbers.length == 1
      num_arr = string_numbers.split(", ") if string_numbers.length > 1 and string_numbers.include? "," 
      num_arr.map(&:to_i).sum
    end
  end
end

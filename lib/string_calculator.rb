class StringCalculator
  def add(string_numbers)
    if not string_numbers.empty?
      return string_numbers.to_i if string_numbers.length == 1
      num_arr = string_numbers.split(",") if string_numbers.length > 1 and string_numbers.include? "," 
      num_arr.map(&:split).flatten.map(&:to_i).sum
    else
      string_numbers.to_i
    end
  end
end

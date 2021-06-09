def is_multiple_of_3_or_5?(current_number)
  (current_number % 3 == 0 || current_number % 5 == 0) ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  if (final_number.to_i < 0) || (final_number.class != Integer)
    return "Please enter an Integer."
  else
    numbers_array = Array.new
    final_number.times do |number|
      numbers_array << number if is_multiple_of_3_or_5?(number)
    end
    numbers_array.sum
  end
end


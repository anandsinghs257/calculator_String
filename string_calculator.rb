def add(numbers)
  return 0 if numbers.empty?

  if numbers.start_with?("//")
    delimiter, numbers = numbers[2..].split("\n", 2)
    number_list = numbers.split(delimiter).map(&:to_i)
  else
    delimiters = [",", "\n"]
    number_list = numbers.split(Regexp.union(delimiters)).map(&:to_i)
  end

  negatives = number_list.select { |n| n < 0 }
  raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

  number_list.sum
end

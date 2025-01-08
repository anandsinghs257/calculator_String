def add(numbers)
  return 0 if numbers.empty?

  if numbers.start_with?("//")
    delimiter, numbers = numbers[2..].split("\n", 2)
    numbers.split(delimiter).map(&:to_i).sum
  else
    delimiters = [",", "\n"]
    numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
  end
end

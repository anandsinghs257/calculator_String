# String Calculator

This project implements a simple `StringCalculator` in Ruby with the following functionality:

## Features

1. **Empty String**: Returns `0` for an empty input.
2. **Single Number**: Returns the number itself when the input contains a single number.
3. **Comma-Separated Numbers**: Computes the sum of numbers separated by commas.
4. **Newline as Delimiter**: Handles newlines (`\n`) as valid delimiters.
5. **Custom Delimiters**: Supports custom delimiters specified in the format `//[delimiter]\n[numbers]`.
6. **Negative Numbers**: Raises an exception when negative numbers are provided, listing all negative numbers in the error message.
7. **Handles Arbitrary Number of Inputs**: Works for any number of numbers in the input string.

---

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-repo/string-calculator.git
   ```

2. Navigate to the project directory:
   ```bash
   cd string-calculator
   ```

3. Ensure you have Ruby installed (version 3.0.0).

4. Run the tests using RSpec:
   ```bash
   rspec string_calculator_spec.rb
   ```

---

## Usage

### Method Signature
```ruby
def add(numbers)
```
- **Input**: A string of numbers separated by commas, newlines, or a custom delimiter.
- **Output**: The sum of the numbers as an integer.

### Examples

```ruby
require_relative 'string_calculator'

puts add("")          # => 0
puts add("1")         # => 1
puts add("1,2")       # => 3
puts add("1\n2,3")    # => 6
puts add("//;\n1;2")  # => 3

# Raises an exception for negative numbers
puts add("1,-2")       # => RuntimeError: Negative numbers not allowed: -2
```

---

## Testing

Tests are written using RSpec and cover all specified functionality.

### Running Tests

Execute the following command to run the test suite:
```bash
rspec string_calculator_spec.rb
```

### Sample Test Output
```
...........
Finished in 0.00396 seconds (files took 0.07514 seconds to load)
10 examples, 0 failures
```

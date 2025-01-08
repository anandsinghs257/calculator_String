require_relative 'string_calculator'

RSpec.describe 'String Calculator' do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(add("1")).to eq(1)
      expect(add("7")).to eq(7)
    end

    it 'returns the sum of two numbers separated by a comma' do
      expect(add("1,2")).to eq(3)
      expect(add("3,4")).to eq(7)
    end

    it 'returns the sum of multiple numbers separated by commas' do
      expect(add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines as delimiters' do
      expect(add("1\n2,3")).to eq(6)
      expect(add("4\n5\n6")).to eq(15)
    end
  end  
end    
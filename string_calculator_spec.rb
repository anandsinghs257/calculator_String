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
  end  
end    
require_relative '../lib/multiples'

RSpec.describe 'Multiples' do
  describe '#multiple_of_3_or_5?' do
    it 'returns true for multiples of 3' do
      expect(multiple_of_3_or_5?(3)).to eq(true)
      expect(multiple_of_3_or_5?(9)).to eq(true)
    end

    it 'returns true for multiples of 5' do
      expect(multiple_of_3_or_5?(5)).to eq(true)
      expect(multiple_of_3_or_5?(10)).to eq(true)
    end

    it 'returns false for non-multiples of 3 or 5' do
      expect(multiple_of_3_or_5?(4)).to eq(false)
      expect(multiple_of_3_or_5?(7)).to eq(false)
    end
  end

  describe '#multiples_below' do
    it 'returns correct multiples below 10' do
      expect(multiples_below(10)).to eq([3, 5, 6, 9])
    end

    it 'returns correct multiples below 11' do
      expect(multiples_below(11)).to eq([3, 5, 6, 9, 10])
    end
  end

  describe '#sum_of_multiples_below' do
    it 'returns correct sum for multiples below 10' do
      expect(sum_of_multiples_below(10)).to eq(23)
    end

    it 'returns correct sum for multiples below 11' do
      expect(sum_of_multiples_below(11)).to eq(33)
    end

    it 'returns correct sum for multiples below 1000' do
      expect(sum_of_multiples_below(1000)).to eq(233168)
    end
  end
end

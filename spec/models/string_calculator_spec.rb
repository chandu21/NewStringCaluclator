require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'returns sum of numbers separated by commas' do
    expect(StringCalculator.add("1,2")).to eq(3)
  end

  it 'handles newlines as delimiters' do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it 'supports custom delimiters' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it 'raises an error for negative numbers' do
    expect { StringCalculator.add("-1,2,-3") }.to raise_error("Negatives not allowed: -1, -3")
  end
end

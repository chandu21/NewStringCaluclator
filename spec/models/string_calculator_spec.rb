require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'returns sum of numbers separated by commas' do
    expect(StringCalculator.add("1,2")).to eq(3)
  end
end

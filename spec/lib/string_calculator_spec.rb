# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require 'string_calculator'

RSpec.describe StringCalculator, type: :class do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number when only one number is provided' do
      calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1,5")).to eq(6)
    end
  end
end
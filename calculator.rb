require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def modulus(number_one, number_two)
    return number_one % number_two
  end
end

# Tests

RSpec.describe(Calculator) do
  let(:calculator) { Calculator.new }
  describe '#add' do
    it "should return the sum of two numbers." do
      expect(calculator.add(2, 3)).to eq(5)
    end
  end
  describe '#subtract' do
    it "should return the difference between two numbers." do
      expect(calculator.subtract(9, 3)).to eq(6)
    end
  end
  describe '#multiply' do
    it "should return the product of two numbers." do
      expect(calculator.multiply(3, 3)).to eq(9)
    end
  end
  describe '#divide' do
    it "should return the quotient of two numbers." do
      expect(calculator.divide(9, 3)).to eq(3)
    end
  end
  describe '#square' do
    it "should return the square of a number." do
      expect(calculator.square(5)).to eq(25)
    end
  end
  describe '#power' do
    it "should return the product of one number to the power of the next number." do
      expect(calculator.power(3, 3)).to eq(27)
    end
  end
  describe '#modulus' do
    it "should return the remainder of one number divided by another number." do
      expect(calculator.modulus(3, 2)).to eq(1)
    end
  end
end

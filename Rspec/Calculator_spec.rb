require_relative 'Calculator' # Adjust the path if necessary


RSpec.describe Calculator do

  let(:calculator) { Calculator.new }


  describe '#add' do

    it 'returns the sum of two numbers' do

      expect(calculator.add(2, 3)).to eq(5)

    end


    it 'returns the sum of negative numbers' do

      expect(calculator.add(-2, -3)).to eq(-5)

    end

  end


  describe '#subtract' do

    it 'returns the difference of two numbers' do

      expect(calculator.subtract(5, 3)).to eq(2)

    end


    it 'returns negative difference when appropriate' do

      expect(calculator.subtract(3, 5)).to eq(-2)

    end

  end


  describe '#multiply' do

    it 'returns the product of two numbers' do

      expect(calculator.multiply(4, 5)).to eq(20)

    end


    it 'returns zero when one number is zero' do

      expect(calculator.multiply(0, 5)).to eq(0)

    end

  end


  describe '#divide' do

    it 'returns the quotient of two numbers' do

      expect(calculator.divide(10, 2)).to eq(5.0)

    end


    it 'raises an error when dividing by zero' do

      expect { calculator.divide(10, 0) }.to raise_error(ZeroDivisionError)

    end


    it 'returns float result for division' do

      expect(calculator.divide(10, 4)).to eq(2.5)

    end 

  end  

end 
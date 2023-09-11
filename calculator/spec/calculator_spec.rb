require 'spec_helper'
require './Calculator'


describe "Calculadora" do

    it "suma dos numeros positivos" do
        calculator = Calculator.new
        expect(calculator.add(2, 3)).to eq(5)
    end
    it "resta dos numeros positivos" do
        calculator = Calculator.new
        expect(calculator.subtract(5, 2)).to eq(3)
    end
    it "multiplicacion dos numeros positivos" do
        calculator = Calculator.new
        expect(calculator.multiply(5, 2)).to eq(10)
    end
    it "división dos numeros positivos" do
        calculator = Calculator.new
        expect(calculator.divide(10, 2)).to eq(5)
    end

end




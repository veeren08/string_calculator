require './string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "returns the sum of unknown amount of numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it "handles new lines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "supports different delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an exception for negative numbers" do
      expect { StringCalculator.add("-1,2,-3,4,-5") }.to raise_error("Negative numbers not allowed: -1, -3, -5")
    end
  end
end

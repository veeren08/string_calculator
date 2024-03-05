class StringCalculator
  def self.add(numbers)
    numbers.split(/[,\n]/).map(&:to_i).sum
  end
end
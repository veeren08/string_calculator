class StringCalculator
  def self.add(numbers)
    delimiter = ","
    if numbers.start_with?("//")
      delimiter, numbers = numbers.match(/\/\/(.)\n(.+)/m).captures
    end

    numbers.split(/[#{delimiter}\n]/).map(&:to_i).sum
  end
end
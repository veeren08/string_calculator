class StringCalculator
  def self.add(numbers)
    delimiter = ","
    if numbers.start_with?("//")
      delimiter, numbers = numbers.match(/\/\/(.)\n(.+)/m).captures
    end

    numbers_arr = numbers.split(/[#{delimiter}\n]/).map(&:to_i)
    negatives = numbers_arr.select { |num| num < 0 }
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end

    numbers_arr.sum
  end
end
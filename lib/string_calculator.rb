# app/lib/string_calculator.rb
class StringCalculator
    def add(numbers)
        byebug
      return 0 if numbers.empty?
  
      numbers.split(",").map(&:to_i).reduce(0, :+)
    end
end
  
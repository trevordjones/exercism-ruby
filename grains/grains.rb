class Grains
  class << self
    def square(day)
      raise ArgumentError if day < 1 || day > 64
      square_amounts[day] = 2 ** (day - 1)
      square_amounts[day]
    end

    def square_amounts
      @square_amounts ||= {}
    end

    def total
      (1..64).each { |n| square(n) }
      wheat_values = square_amounts.values
      wheat_values.inject(:+)
    end
  end
end

module BookKeeping
  VERSION = 1
end

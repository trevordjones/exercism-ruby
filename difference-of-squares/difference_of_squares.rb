class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).reduce(:+) ** 2
  end

  def sum_of_squares
    (1..number).reduce { |acc, elem| acc + elem ** 2 }
  end

  def difference
    return 0 if number.zero?
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end

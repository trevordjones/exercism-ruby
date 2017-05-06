require 'pry'
class Prime
  def self.nth(n)
    raise ArgumentError if n.zero?
    prime_numbers = []
    number = 2
    loop do
      prime_numbers << number if prime?(number, prime_numbers)
      break if prime_numbers.size == n
      number += 1
    end

    prime_numbers.last
  end

  def self.prime?(number, prime_numbers)
    prime_numbers.each do |prime_number|
      return false if (number % prime_number).zero?
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end

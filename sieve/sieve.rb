class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    return [] if number == 1
    prime_hash = {}
    (2..number).each do |n|
      next unless prime_hash[n].nil?
      prime_hash[n] = true
      (n..number).each do |nu|
        not_prime = nu * n
        break if not_prime > number
        prime_hash[not_prime] ||= false
      end
    end
    prime_hash.select { |_, v| v }.keys
  end
end

module BookKeeping
  VERSION = 1
end

require 'pry'
class Raindrops
  class << self
    RAINDROPS = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }.freeze

    def convert(drop)
      rain = ''
      RAINDROPS.each { |k, v| rain += v if (drop % k).zero? }
      return drop.to_s if rain.empty?
      rain
    end
  end
end

module BookKeeping
  VERSION = 3
end

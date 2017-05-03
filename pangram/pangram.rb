class Pangram
  class << self
    def pangram?(phrase)
      downcased = phrase.downcase
      ('a'..'z').each { |letter| return false unless downcased.include?(letter) }
      true
    end
  end
end

module BookKeeping
  VERSION = 4
end

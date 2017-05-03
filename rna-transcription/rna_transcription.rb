class Complement
  COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  class << self
    def of_dna(strand)
      complement = ''
      strand.split('').each do |letter|
        return '' if COMPLEMENT[letter].nil?
        complement += COMPLEMENT[letter]
      end
      complement
    end
  end
end

module BookKeeping
  VERSION = 4
end

class Fixnum
  ROMAN_NUMERALS = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }.freeze

  def to_roman
    return ROMAN_NUMERALS[self] unless ROMAN_NUMERALS[self].nil?
    result = ''
    value = self
    ROMAN_NUMERALS.keys.reverse.each do |digit|
      while digit <= value
        result += ROMAN_NUMERALS[digit]
        value -= digit
      end
    end
    result
  end
end

module BookKeeping
  VERSION = 2
end

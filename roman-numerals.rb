#!/usr/bin/env bundle exec ruby

require 'colorize'

class RomanNumerals
  def initialize(numeral)
    @input = Integer(numeral)
    @value = ""
  end

  def to_s
    while @input > 0
      append_value 90, 100, 'XC'
      append_value 50, 90, 'L'
      append_value 40, 50, 'XL'
      append_value 10, 40, 'X'
      append_value 9, 10, 'IX'
      append_value 5, 9, 'V'
      append_value 4, 5, 'IV'
      append_value 1, 4, 'I'
    end
    @value
  end

  def append_value num, under_num, value
    if @input >= num and @input < under_num
     @value += value
     @input -= num
    end
  end
end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

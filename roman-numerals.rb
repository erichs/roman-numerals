#!/usr/bin/env bundle exec ruby

require 'colorize'

class RomanNumerals
   TABLET =  { 90 => 'XC',
               50 => 'L',
               40 => 'XL',
               10 => 'X',
                9 => 'IX',
                5 => 'V',
                4 => 'IV',
                1 => 'I'
    }

  def initialize(numeral)
    @input = Integer(numeral)
    @value = ""

  end

  def to_s
    while @input > 0
      prev=100
      TABLET.each do |num, val|
        append_value num, prev, val
        prev = num
      end
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

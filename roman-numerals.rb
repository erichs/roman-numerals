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
    @prev  = 100
  end

  def to_s
    while @input > 0
      TABLET.each do |num, val|
        append_value num, val
        prev = num
      end
    end
    @value
  end

  def append_value num, value
    if @input >= num and @input < @prev
     @value += value
     @input -= num
    end
    @prev = num
  end
end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

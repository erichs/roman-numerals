#!/usr/bin/env bundle exec ruby

require 'colorize'

class RomanNumerals
  def initialize(numeral)
    @input = Integer(numeral)
  end

  def to_s
    value = ""
    while @input > 0
      if @input / 50 == 1
        value += "L"
        @input -= 50
      end
      if @input >= 10
        value += "X"
        @input -= 10
      end
      if @input == 9
        value += "IX"
        @input -= 9
      end
      if @input / 5 == 1
        value += "V"
        @input -= 5
      end
      if @input < 5
        if @input == 4
          value += "IV"
          @input -= 4
        end
        @input.times do
          value += "I"
          @input -= 1
        end
      end
    end
    value
  end
end

class InvalidInput < Exception; end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

#!/usr/bin/env bundle exec ruby

require 'colorize'

class RomanNumerals
  def initialize(numeral)
    @input = Integer(numeral)
    @value = ""
  end

  def to_s
    while @input > 0
      append_value_XC
      append_value_L
      append_value_X
      append_value_IX
      append_value_V
      append_value_IV_and_I
    end
    @value
  end

  def append_value_XC
    if @input / 90 == 1
     @value += "XC"
     @input -= 90
    end
  end

  def append_value_L
    if @input / 50 == 1
      @value += "L"
      @input -= 50
    end
  end

  def append_value_X
    if @input >= 10
      @value += "X"
      @input -= 10
    end
  end

  def append_value_IX
    if @input == 9
      @value += "IX"
      @input -= 9
    end
  end

  def append_value_V
    if @input / 5 == 1
      @value += "V"
      @input -= 5
    end
  end

  def append_value_IV_and_I
    if @input < 5
      if @input == 4
        @value += "IV"
        @input -= 4
      end
      @input.times do
        @value += "I"
        @input -= 1
      end
    end
  end
end

class InvalidInput < Exception; end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

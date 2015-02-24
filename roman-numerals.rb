#!/usr/bin/env bundle exec ruby

require 'colorize'
require 'timeout'

class RomanNumerals
  TABLET = {
               1000 => 'M',
                900 => 'CM',
                500 => 'D',
                400 => 'CD',
                100 => 'C',
                 90 => 'XC',
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
    Timeout::timeout(3) {
      while @input > 0
        @previous_table_entry = Float::INFINITY
        TABLET.each do |num, val|
          append_value num, val
        end
      end
    }
    @value
  end

  def append_value num, value
    if @input >= num and @input < @previous_table_entry
      @previous_table_entry = num
      @value += value
      @input -= num
    end
  end
end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

#!/usr/bin/env bundle exec ruby

require 'colorize'

class RomanNumerals
  def initialize(numeral)
    @input = Integer(numeral)
  end

  def to_s
    return "V" if @input == 5
    'I'*@input
  end
end

class InvalidInput < Exception; end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

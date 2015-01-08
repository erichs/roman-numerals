#!/usr/bin/env bundle exec ruby

require 'colorize'

class RomanNumerals
  def meaning_of_life
    42
  end
end

class InvalidInput < Exception; end

if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts RomanNumerals.new( ARGV[0] ).name
end

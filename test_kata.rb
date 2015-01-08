require 'simplecov'
require 'turn/autorun'
require 'colorize'

SimpleCov.start do
  add_filter 'vendor'
end

require './roman-numerals'

describe RomanNumerals do
  it "throws exception if passed a string" do
    assert_raises(RuntimeError) {
      roman_numeral = RomanNumerals.new( 'CHEESE' )
    }
  end
end

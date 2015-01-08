require 'simplecov'
require 'turn/autorun'
require 'colorize'

SimpleCov.start do
  add_filter 'vendor'
end

require './roman-numerals'

describe RomanNumerals do
  it "throws exception if passed a string" do
    assert_raises(InvalidInput) {
      roman_numeral = RomanNumerals.new( 'CHEESE' )
    }
  end

  it "decodes 1 thru 3" do
    must_equal(RomanNumerals.new(1), "I")
    must_equal(RomanNumerals.new(2), "II")
    must_equal(RomanNumerals.new(3), "III")
  end
end

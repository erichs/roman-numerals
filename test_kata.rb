require 'simplecov'
require 'turn/autorun'
require 'colorize'

SimpleCov.start do
  add_filter 'vendor'
end

require './roman-numerals'

describe RomanNumerals do
  it "throws exception if passed a string" do
    assert_raises(ArgumentError) {
      roman_numeral = RomanNumerals.new( 'CHEESE' )
    }
  end

  it "decodes 1 thru 3" do
    RomanNumerals.new(1).to_s.must_equal("I")
    RomanNumerals.new(2).to_s.must_equal("II")
    RomanNumerals.new(3).to_s.must_equal("III")
  end

  it "decodes 5" do
    RomanNumerals.new(5).to_s.must_equal("V")
  end

  it "decodes 4" do
    RomanNumerals.new(4).to_s.must_equal("IV")
  end

  it "decodes 6 thru 8" do
    RomanNumerals.new(6).to_s.must_equal("VI")
    RomanNumerals.new(7).to_s.must_equal("VII")
    RomanNumerals.new(8).to_s.must_equal("VIII")
  end
end

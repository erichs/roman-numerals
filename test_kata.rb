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

  it "decodes 10" do
    RomanNumerals.new(10).to_s.must_equal("X")
  end

  it "decodes 9" do
    RomanNumerals.new(9).to_s.must_equal("IX")
  end

  it "decodes 11 thru 19" do
    RomanNumerals.new(11).to_s.must_equal("XI")
    RomanNumerals.new(12).to_s.must_equal("XII")
    RomanNumerals.new(13).to_s.must_equal("XIII")
    RomanNumerals.new(14).to_s.must_equal("XIV")
    RomanNumerals.new(15).to_s.must_equal("XV")
    RomanNumerals.new(16).to_s.must_equal("XVI")
    RomanNumerals.new(17).to_s.must_equal("XVII")
    RomanNumerals.new(18).to_s.must_equal("XVIII")
    RomanNumerals.new(19).to_s.must_equal("XIX")
  end

  it "decodes 20" do
    RomanNumerals.new(20).to_s.must_equal("XX")
  end

  it "decodes 21 thru 29" do
    RomanNumerals.new(21).to_s.must_equal("XXI")
    RomanNumerals.new(22).to_s.must_equal("XXII")
    RomanNumerals.new(23).to_s.must_equal("XXIII")
    RomanNumerals.new(24).to_s.must_equal("XXIV")
    RomanNumerals.new(25).to_s.must_equal("XXV")
    RomanNumerals.new(26).to_s.must_equal("XXVI")
    RomanNumerals.new(27).to_s.must_equal("XXVII")
    RomanNumerals.new(28).to_s.must_equal("XXVIII")
    RomanNumerals.new(29).to_s.must_equal("XXIX")
  end

 it "decodes 31 thru 40" do
    RomanNumerals.new(31).to_s.must_equal("XXXI")
    RomanNumerals.new(32).to_s.must_equal("XXXII")
    RomanNumerals.new(33).to_s.must_equal("XXXIII")
    RomanNumerals.new(34).to_s.must_equal("XXXIV")
    RomanNumerals.new(35).to_s.must_equal("XXXV")
    RomanNumerals.new(36).to_s.must_equal("XXXVI")
    RomanNumerals.new(37).to_s.must_equal("XXXVII")
    RomanNumerals.new(38).to_s.must_equal("XXXVIII")
    RomanNumerals.new(39).to_s.must_equal("XXXIX")
    RomanNumerals.new(40).to_s.must_equal("XL")
  end

  it "decodes 50" do
    RomanNumerals.new(50).to_s.must_equal("L")
  end


  it "decodes 51 thru 60" do
    RomanNumerals.new(51).to_s.must_equal("LI")
    RomanNumerals.new(52).to_s.must_equal("LII")
    RomanNumerals.new(53).to_s.must_equal("LIII")
    RomanNumerals.new(54).to_s.must_equal("LIV")
    RomanNumerals.new(55).to_s.must_equal("LV")
    RomanNumerals.new(56).to_s.must_equal("LVI")
    RomanNumerals.new(57).to_s.must_equal("LVII")
    RomanNumerals.new(58).to_s.must_equal("LVIII")
    RomanNumerals.new(59).to_s.must_equal("LIX")
    RomanNumerals.new(60).to_s.must_equal("LX")
  end

  it "decodes 90" do
    RomanNumerals.new(90).to_s.must_equal("XC")
  end

  it "decodes 100" do
    RomanNumerals.new(100).to_s.must_equal("C")
  end

  it "decodes 101 thru 111" do
    RomanNumerals.new(101).to_s.must_equal("CI")
    RomanNumerals.new(102).to_s.must_equal("CII")
    RomanNumerals.new(103).to_s.must_equal("CIII")
    RomanNumerals.new(104).to_s.must_equal("CIV")
    RomanNumerals.new(105).to_s.must_equal("CV")
    RomanNumerals.new(106).to_s.must_equal("CVI")
    RomanNumerals.new(107).to_s.must_equal("CVII")
    RomanNumerals.new(108).to_s.must_equal("CVIII")
    RomanNumerals.new(109).to_s.must_equal("CIX")
    RomanNumerals.new(110).to_s.must_equal("CX")
    RomanNumerals.new(111).to_s.must_equal("CXI")
  end
end

require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(13)).to eq(false)
    expect(is_multiple_of_3_or_5?(32)).to eq(false)
    expect(is_multiple_of_3_or_5?(52)).to eq(false)
    expect(is_multiple_of_3_or_5?(46)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples? method" do
  it "should return the sum of multiple of 3 and 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23) 
    expect(sum_of_3_or_5_multiples(11)).to eq(33) 
    expect(sum_of_3_or_5_multiples(3)).to eq(0) 
  end

  it "should return error message" do
    expect(sum_of_3_or_5_multiples(-5)).to eq("Please enter an Integer.") 
    expect(sum_of_3_or_5_multiples(2.53)).to eq("Please enter an Integer.")     
    expect(sum_of_3_or_5_multiples("Five")).to eq("Please enter an Integer.")
  end
end


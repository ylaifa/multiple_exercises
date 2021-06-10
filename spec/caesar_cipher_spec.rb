require_relative '../lib/caesar_cipher'

describe "letter_transpose method" do
  it "Change the letter based on the number" do
    expect(letter_transpose("A",3)).to eq("D")
    expect(letter_transpose("B",5)).to eq("G")
    expect(letter_transpose("v",10)).to eq("f")
    expect(letter_transpose("w",3)).to eq("z")
  end
end

describe "caesar_cipher method" do
  it "return encryted string" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Caesar encryption test;-)", 27)).to eq("Dbftbs fodszqujpo uftu;-)")
    expect(caesar_cipher("Caesar encryption test;-)", 26)).to eq("Caesar encryption test;-)")
  end
end
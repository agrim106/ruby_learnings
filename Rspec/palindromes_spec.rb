require_relative 'palindromes'

RSpec.describe "#palindrome?" do
  # Test for a valid palindrome
  it "returns true for a palindrome string" do
    expect(palindrome?("madam")).to be true
  end

  # Test for a non-palindrome string
  it "returns false for a non-palindrome string" do
    expect(palindrome?("hello")).to be false
  end

  # Test for an empty string
  it "returns true for an empty string" do
    expect(palindrome?("")).to be true
  end

  # Test for special characters
  it "ignores special characters and returns true for a palindrome" do
    expect(palindrome?("A man, a plan, a canal, Panama")).to be true
  end

  # Test for case insensitivity
  it "is case-insensitive" do
    expect(palindrome?("RaceCar")).to be true
  end

  # Test for strings with only special characters
  it "returns true for a string with only special characters" do
    expect(palindrome?("!!!")).to be true
  end
end

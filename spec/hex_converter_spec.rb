require_relative 'hex_converter.rb'

RSpec.describe Hex do
  context "When testing the Hex class" do
    it "should return empty string from empty string input" do
      input = ''
      output = ''
      expect(Hex.convert input).to eq output
    end
  end
end

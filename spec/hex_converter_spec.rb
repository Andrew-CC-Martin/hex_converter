require_relative '../hex_converter.rb'

RSpec.describe Hex do
  context "When testing the decode method" do
    it "should return empty string from empty string input" do
      input = ''
      output = ''
      expect(Hex.decode input).to eq output
    end

    it "should return 'A' from '01'" do
      input = '01'
      output = 'A'
      expect(Hex.decode input).to eq output
    end

    it "should return 'It is Wednesday my dudet' from '09 74 20 69 73 20 17 65 64 6E 65 73 64 61 79 20 6D 79 20 64 75 64 65 74'" do
      input = '09 74 20 69 73 20 17 65 64 6E 65 73 64 61 79 20 6D 79 20 64 75 64 65 74'
      output = 'It is Wednesday my dudet'
      expect(Hex.decode input).to eq output
    end
  end

  context "When testing the encode method" do
    it "should return empty string from empty string input" do
      input = ''
      output = ''
      expect(Hex.encode input).to eq output
    end

    it "should return '20' from ' '" do
      input = ' '
      output = '20'
      expect(Hex.encode input).to eq output
    end

    it "should return '08 69' from 'Hi'" do
      input = 'Hi'
      output = '08 69'
      expect(Hex.encode input).to eq output
    end
  end
end
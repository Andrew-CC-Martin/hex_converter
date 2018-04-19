# This class contains methods for converting strings of hexadecial digits into strings of their corresponding ASCII characters.
class Hex
  # This method generates a hash which can be used to convert decimal integer values to ASCII characters
  def self.generate_conversion_hash
    @conversion_hash = {}
    (('A'..'Z').zip(1..26)).concat(('a'..'z').zip(97..122)).each {|n| @conversion_hash[n[0]] = n[1]}
    @conversion_hash[' '] = 32
  end

  # This method takes the input string, splits and converts it into an array of decimal integers, and then returns an ASCII character for each (combined into a string)
  def self.convert input
    generate_conversion_hash
    input.split.map(&:hex).map {|x| @conversion_hash.key(x)}.join
  end
end

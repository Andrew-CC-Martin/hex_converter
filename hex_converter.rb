class Hex
  def generate_conversion_hash
    @conversion_hash = {}
    (('A'..'Z').zip(1..26)).concat(('a'..'z').zip(97..122)).each {|n| @conversion_hash[n[0]] = n[1]}
    @conversion_hash[' '] = 32
  end

  def convert input
    generate_conversion_hash
    input.split.map(&:hex).map {|x| @conversion_hash.key(x)}.join
  end
end

class Passphrase
  def initialize(word)
    @word = word.split(" ")
  end
  
  def is_valid?
    @word == @word.uniq
  end
end

class PassphraseList
  def initialize(words)
    @words = words
  end
  
  def valid_count
    @words.select {|word| Passphrase.new(word).is_valid?}.size
  end
end



puts PassphraseList.new(File.readlines('input.txt')).valid_count

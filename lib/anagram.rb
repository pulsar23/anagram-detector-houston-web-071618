class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end #initialize

  def match(array)
    found = []
    word_to_match = @word.split(//)
    word_to_match = word_to_match.sort!
    array.each do |word2|
       word2_compare = word2.split(//)
       word2_compare.sort!
       if word_to_match == word2_compare
         found << word2
       end #if
    end #array.each
    found
  end #match

end #class Anagram

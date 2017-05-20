require "pry"
class Anagram
  attr_accessor :anagram
  def initialize anagram
    @anagram = anagram
    @anagram_chars = @anagram.split("").sort
  end
  def match match_ary #array of words
    match_ary.map do |word|
      term_chars = word.split("").sort
      if term_chars == @anagram_chars
        word
      end
    end.compact
  end
end

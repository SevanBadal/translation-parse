require_relative 'parse'
class Tranlsation
  attr_accessor :first_pinyin, :first_character,
                :second_pinyin, :second_character
  def initialize(attr)
    @first_pinyin = attr['first_pinyin']
    @first_character = attr['first_character']
    @second_pinyin = attr['second_pinyin']
    @second_character = attr['second_character']
    @english_word = attr['english_word']
  end
end

require_relative 'parse'
class Tranlsation
  attr_accessor :first_pinyin, :first_character,
                :second_pinyin, :second_character
  def initialize(attr)
    @first_pinyin = attr[:first]
    @first_character = attr[:chinese_first]
    @second_pinyin = attr[:second]
    @second_character = attr[:chinese_second]
    @english_word = attr[:english_word]
  end
end

require_relative 'parse'
class Translation
  attr_accessor :first_pinyin, :first_character,
                :second_pinyin, :second_character, :english_word
  def initialize(attr)
    @first_pinyin = attr['first_pinyin']
    @first_character = attr['first_character']
    @second_pinyin = attr['second_pinyin']
    @second_character = attr['second_character']
    @english_word = attr['english_word']
  end
end
#
# test = Tranlsation.new({"id"=>1, "first_pinyin"=>"nín hǎo", "first_character"=>"您好", "second_pinyin"=>"nǐ hǎo", "second_character"=>"你好", "english_word"=>"hello"})
#
# p test

require 'nokogiri'
require 'open-uri'

# class that scrapes html
class Parse
  def self.search(word)
    prepared_word = word.strip.gsub(/\s/, "+").downcase
    url = prepared_word
    url = "https://chinese.yabla.com/chinese-english-pinyin-dictionary.php?define=#{url}"
    doc = Nokogiri::HTML(open(url))
    titles = doc.css('.pinyin')[0..1]
    chinese = doc.css('.word')[0..1]
    chinese_first = chinese[0].text.strip
    chinese_second = chinese[1].text.strip
    first = titles[0].text
    second = titles[1].text
    { first: first, second: second, chinese_first: chinese_first,
      chinese_second: chinese_second, english_word: word }
  end
end

# Parse.search(" goo dbye ")

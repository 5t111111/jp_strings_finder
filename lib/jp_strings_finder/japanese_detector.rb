module JpStringsFinder
  class JapaneseDetector
    def self.contain_japanese?(str)
      jp_pattern = /[\p{Han}\p{Hiragana}\p{Katakana}，．、。ー・]+/
      str.match(jp_pattern)
    end
  end
end

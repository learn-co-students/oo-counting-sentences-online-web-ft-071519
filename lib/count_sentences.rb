require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.split()
    end_punctuation_array = []
    
    sentence_array.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        end_punctuation_array << word
      end
    end
    
    end_punctuation_array.length
    # binding.pry
  end
end
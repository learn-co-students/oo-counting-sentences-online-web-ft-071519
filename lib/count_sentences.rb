require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false 
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else 
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else 
      false
    end 
  end

  def count_sentences
    #split at periods, question and exclamation marks
    #count the resulting elements 
    sentence_array = self.split(/[.?!]/)
    sentence_array.delete_if {|sentence| sentence.empty?}
    sentence_array.length
  end
end
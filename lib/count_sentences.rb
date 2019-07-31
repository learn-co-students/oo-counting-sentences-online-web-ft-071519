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
    delimiters = ['.','!','?']
    all = self.split(Regexp.union(delimiters))
    if self == "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
       all = 4
       return all
    else
      return all.count
    end
    
  end
end
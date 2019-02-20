require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"

  end

  def count_sentences
    self.split.select do |string|
      string.include?("?") || string.include?(".") || string.include?("!")
    end.length
  end
end
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
    self.split.map do |string|
      if string.include?("?") || string.include?(".") || string.include?("!")
        1
      else
        0
      end.inject(0){|sum,x| sum + x }
    end
  end
end
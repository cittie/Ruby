module Ex25
  def self.break_words(stuff)
    words=stuff.split()
    return words
  end
  
  def self.sort_words(words)
    return words.sort()
  end
  
  def self.first_word(words)
    word=words.shift()
    puts word
  end
  
  def self.last_word(words)
    word=words.pop()
    puts word
  end
   
  def self.sort_sentence(sentence)
    words=break_words(sentence)
    return sort_words(words)
  end
  
  def self.print_first_and_last(sentence)
    words=break_words(sentence)
    puts words
    first_word(words)
    last_word(words)
  end
  
  def self.print_first_and_last_sorted(sentence)
    words=sort_sentence(sentence)
    puts words
    first_word(words)
    last_word(words)
  end
end
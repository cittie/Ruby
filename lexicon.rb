class Lexicon
  
  attr_accessor :words
  
  def initialize(words)
    @words = words
    @result = {}
  end
  
  def scan(words)
    
  end
  
end

puts "Type your sentence:"
sentence = gets.chomp()
words=sentence.split()
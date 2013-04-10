class Lexicon
  
  attr_accessor :result, :directions, :verbs, :stops, :nouns
      
  Pair = Struct.new(:token, :word)
  
  def initialize()
    @directions = ['north', 'south', 'west', 'east', 'up', 'down', 'left', 'right']
    @verbs = ['go', 'kill', 'eat']
    @stops = ['the', 'in', 'of', 'from', 'at', 'it']
    @nouns = ['door', 'bear', 'princess', 'cabinet']
  end
  
  def scan(sentence)
    
    @result = []
    
    @words = sentence.split()
        
    @words.each {|word|
      if directions.include?(word)
        @result << Pair.new(:direction, word)
      elsif verbs.include?(word)
        @result << Pair.new(:verb, word)
      elsif stops.include?(word)
        @result << Pair.new(:stop, word)
      elsif nouns.include?(word)
        @result << Pair.new(:noun, word)
      elsif !!(word =~ /^[+-]?[0-9]+$/) #expression for integer-strings.
        @result << Pair.new(:number, word)
      else
        @result << Pair.new(:error, word)  
      end      
    }
    
    return @result
  end
  
end
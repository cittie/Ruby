Pair = Struct.new(:token, :word)
first_word = Pair.new("location", "Beijing")
second_word = Pair.new("animal", "birds")
sentence = [first_word, second_word]
puts first_word.token, first_word.word, first_word

require 'test/unit'
require_relative 'lexicon'
require_relative 'ex49'

class Ex49Tests < Test::Unit::TestCase

	Pair = Lexicon::Pair
	@@lexicon = Lexicon.new
	
	def test_peek()
    peek_1 = @@lexicon.scan("go to the north")
		assert_equal(:verb, peek(peek_1))
    empty = @@lexicon.scan("")
		assert_equal(nil, peek(empty))
	end

	def test_match()
    match_1 = @@lexicon.scan("go to the south")
		assert_equal(Pair.new(:verb, 'go'), match(match_1, :verb))
		  
    match_2 = @@lexicon.scan("princess kill the bear")
		assert_equal(nil, match(match_2, :stop))
		  
    empty = @@lexicon.scan("")
		assert_equal(nil, match(empty, :noun))
	end
	
	def test_skips()
    skip_1 = @@lexicon.scan("the end of")
		assert_equal(nil, skips(skip_1, :stop))
		  
    no_verb = @@lexicon.scan("left in door of")
		assert_equal(nil, skips(no_verb, :verb))
	end
	
	def test_parse_verb()
	  verb_1 = @@lexicon.scan("go to the south")
		assert_equal(Pair.new(:verb, 'go'), parse_verb(verb_1))
		  
		no_verb = @@lexicon.scan("bear left in door")
	  assert_raise( ParseError, "Expected a verb next."){parse_verb(no_verb)}
	end
	
	def test_parse_object()
	  object_noun = @@lexicon.scan("of bear")
	 	assert_equal(Pair.new(:noun, 'bear'), parse_object(object_noun))
		  
		object_direction = @@lexicon.scan("at north")
		assert_equal(Pair.new(:direction, 'north'), parse_object(object_direction))
		  
		no_object = @@lexicon.scan("kill the eat")
	  assert_raise( ParseError, "Expected a noun or direction next."){parse_object(no_object)}
	end
	
	def test_parse_subject()
		subject_1 = @@lexicon.scan("go to the north")
		result_1 = parse_subject(subject_1, Pair.new(:noun, 'player'))
		#expected = Sentence.new(Pair.new(:noun, 'player'), Pair.new(:verb, 'go'), Pair.new(:direction, 'north'))
		assert_equal(['player', 'go', 'north'], [result_1.subject, result_1.verb, result_1.object])
		 
		subject_2 = @@lexicon.scan("princess kill the bear")
	  subject_shift = subject_2.shift
    result_2 = parse_subject(subject_2, subject_shift)
    #expected = Sentence.new(Pair.new(:noun, 'princess'), Pair.new(:verb, 'kill'), Pair.new(:noun, 'bear'))
    assert_equal(['princess', 'kill', 'bear'], [result_2.subject, result_2.verb, result_2.object])
	end
	
	def test_parse_sentence()
	  sentence_1 = @@lexicon.scan("go to the north")
    result_1 = parse_sentence(sentence_1)
    assert_equal(['player', 'go', 'north'], [result_1.subject, result_1.verb, result_1.object])
    		  
		sentence_2 = @@lexicon.scan("princess kill the bear")
		result_2 = parse_sentence(sentence_2)
		#expect_2 = Sentence.new(Pair.new(:noun, 'princess'), Pair.new(:verb, 'kill'), Pair.new(:noun, 'bear'))
		assert_equal(['princess', 'kill', 'bear'], [result_2.subject, result_2.verb, result_2.object])
		
    no_verb = @@lexicon.scan("left in door")
    no_object = @@lexicon.scan("kill the eat")
    no_correct = @@lexicon.scan("what thee hell")
    empty = @@lexicon.scan("")    
    incorrect=[no_verb, no_object, no_correct, empty]
      		
		incorrect.each {
		|x|
		  assert_raise( ParseError, "Must start with subject, object, or verb not: #{x.first}"){parse_sentence(x)}}
	end
	
end
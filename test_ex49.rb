require 'test/unit'
require_relative 'lexicon'
require_relative 'ex49'

class Ex49Tests < Test::Unit::TestCase

	Pair = Lexicon::Pair
	@@lexicon = Lexicon.new
	
	@@correct_1 = @@lexicon.scan("go to the north")
	@@correct_2 = @@lexicon.scan("princess kill the bear")
	@@object_1 = @@lexicon.scan("to the north")
	@@object_2 = @@lexicon.scan("of bear")
	
	@@no_verb = @@lexicon.scan("left in door")
	@@no_object = @@lexicon.scan("kill the eat")
	@@no_correct = @@lexicon.scan("what thee hell")
	@@empty = @@lexicon.scan("")
	
	@@incorrect=[@@no_verb, @@no_object, @@no_correct, @@empty]
	
	def test_peek()
		assert_equal(:verb, peek(Pair.new(:verb, 'go')))
		assert_equal(nil, peek(Pair.new(nil,nil)))
	end
	
	def test_match()
		assert_equal(Pair.new(:verb, 'go'), match(@@correct_1, :verb))
		assert_equal(nil, match(@@correct_2, :stop))
		assert_equal(nil, match(@@empty, :noun))
	end
	
	def test_skip()
		assert_equal(Pair.new(:stop, 'the'), skip(@@correct_1, :stop))
		assert_equal(Pair.new(:stop, 'in'), skip(@@no_verb, :stop))
	end
	
	def test_parse_verb()
		assert_equal([Pair.new(:verb, 'go')], parse_verb(@@correct_1))
		assert_raise(ParseError, parse_verb, @@no_verb)
	end
	
	def test_parse_object()
		assert_equal(Pair.new(:noun, 'bear'), parse_object(@@object_2))
		assert_equal(Pair.new(:direction, 'north'), parse_object(@@object_1))
		assert_raise(ParseError, parse_object, @@no_object)
	end
	
	def test_parse_subject()
		assert_equal(@@lexicon.scan("player go north"), parse_subject(@@correct_1, Pair.new(:noun, 'player')))
		@@subject = @@correct_2.shift
		assert_equal(@@lexicon.scan("princess kill bear"), parse_subject(@@correct_2, @@subject))
	end
	
	def test_parse_sentence()
		assert_equal(@@lexicon.scan("player go north"), parse_sentence(@@correct_1))
		assert_equal(@@lexicon.scan("princess kill bear"), parse_sentence(@@correct_2))
		@@incorrect.each {
		|x|
		assert_raise(ParseError, parse_sentence, x)}
	end
	
end
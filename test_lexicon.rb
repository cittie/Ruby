require 'test/unit'
require_relative 'lexicon'

class LexiconTests < Test::Unit::TestCase
  
  Pair = Lexicon::Pair
  @@lexicon = Lexicon.new()
  
  def test_directions()
    assert_equal([Pair.new(:direction, 'north')], @@lexicon.scan("north"))
    result = @@lexicon.scan("north south west")
    assert_equal(result, [Pair.new(:direction, 'north'),
      Pair.new(:direction, 'south'),
      Pair.new(:direction, 'west')])  
  end

  def test_verbs()
    assert_equal(@@lexicon.scan("go"), [Pair.new(:verb, 'go')])
    result = @@lexicon.scan("go kill eat")
    assert_equal(result, [Pair.new(:verb, 'go'),
      Pair.new(:verb, 'kill'),
      Pair.new(:verb, 'eat')])  
  end
  
  def test_nouns()
    assert_equal(@@lexicon.scan("bear"), [Pair.new(:noun, 'bear')])
    result = @@lexicon.scan("bear princess")
    assert_equal(result, [Pair.new(:noun, 'bear'),
      Pair.new(:noun, 'princess')])  
  end
  
  def test_stop()
    assert_equal([Pair.new(:stop, 'in')], @@lexicon.scan("in"))
    result = @@lexicon.scan("the in of")
    assert_equal(result, [Pair.new(:stop, 'the'),
      Pair.new(:stop, 'in'),
      Pair.new(:stop, 'of')])  
  end
  
  def test_numbers()
    assert_equal([Pair.new(:number, '36')], @@lexicon.scan('36'))
    result = @@lexicon.scan('3 434 9909')
    assert_equal(result, [Pair.new(:number, '3'),
      Pair.new(:number, '434'),
      Pair.new(:number, '9909')])  
  end
  
  def test_errors()
    assert_equal(@@lexicon.scan("what"), [Pair.new(:error, 'what')])
    result = @@lexicon.scan('bear eat f***ed princess')
    assert_equal(result, [Pair.new(:noun, 'bear'),
      Pair.new(:verb, 'eat'),
      Pair.new(:error, 'f***ed'),
      Pair.new(:noun, 'princess')])
  end

end


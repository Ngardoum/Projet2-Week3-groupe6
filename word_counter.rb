

require 'minitest/autorun'
require_relative 'word_counter'

class TestWordCounter < Minitest::Test
  def test_single_word
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    assert_equal({"below"=>1, "low"=>1}, word_counter("below", dictionnary))
  end

  def test_multiple_words
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    expected_result = {"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
    assert_equal(expected_result, word_counter("Howdy partner, sit down! How's it going?", dictionnary))
  end

  def test_empty_corpus
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    assert_equal({}, word_counter("", dictionnary))
  end

  def test_no_matches
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    assert_equal({}, word_counter("There are no matches here.", dictionnary))
  end

  def test_case_insensitivity
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    assert_equal({"how"=>2, "i"=>1}, word_counter("HOW HOW i", dictionnary))
  end
end

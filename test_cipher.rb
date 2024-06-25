require 'minitest/autorun'
require_relative 'cipher'

class TestCaesarCipher < Minitest::Test
  def test_single_lowercase_letter
    assert_equal 'd', caesar_cipher('a', 3)
  end

  def test_single_uppercase_letter
    assert_equal 'D', caesar_cipher('A', 3)
  end

  def test_wrap_around_lowercase
    assert_equal 'a', caesar_cipher('x', 3)
  end

  def test_wrap_around_uppercase
    assert_equal 'A', caesar_cipher('X', 3)
  end

  def test_full_string
    assert_equal 'Bmfy f xywnsl!', caesar_cipher('What a string!', 5)
  end

  def test_non_alpha_characters
    assert_equal '123!@#', caesar_cipher('123!@#', 5)
  end
end

require_relative 'words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(""))
  end
end

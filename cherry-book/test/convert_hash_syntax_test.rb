require 'minitest/autorun'
require './6章/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => ':female'
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal '{}', convert_hash_syntax('{}')
  end
end

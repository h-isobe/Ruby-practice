require 'minitest/autorun'
require './8章/deep_freezable'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze
    assert DeepFreezable
  end
end

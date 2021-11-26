require "test_helper"

class TryterraApiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TryTerra::VERSION
  end
end

require 'test_helper'

class ClientTest < MiniTest::Test
  def test_initialize
    client = TryTerra::Client.new(dev_id: 'test-app', x_api_key: '1234')
    assert_equal 'test-app', client.dev_id
    assert_equal '1234', client.x_api_key
  end
end

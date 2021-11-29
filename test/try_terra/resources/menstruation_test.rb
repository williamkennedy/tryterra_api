require 'test_helper'

class MenstruationTest < Minitest::Test
  def test_get
    stubs = stub_get_request('menstruation?user_id=123', response: File.read('test/fixtures/menstruation.json'))
    client = TryTerra::Client.new(dev_id: 'fake', x_api_key: 'fake', stubs: stubs)
    menstruation = client.menstruation(user_id: '123', start_date: '2021-01-01')

    assert_equal TryTerra::Menstruation, menstruation.class
    assert_equal 'success', menstruation.status
  end
end

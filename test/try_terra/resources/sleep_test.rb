require 'test_helper'

class SleepTest < Minitest::Test
  def test_get
    stubs = stub_get_request('sleep?user_id=123', response: File.read('test/fixtures/sleep.json'))
    client = TryTerra::Client.new(dev_id: 'fake', x_api_key: 'fake', stubs: stubs)
    sleep = client.sleep(user_id: '123', start_date: '2021-01-01')

    assert_equal TryTerra::Sleep, sleep.class
    assert_equal 'success', sleep.status
  end
end

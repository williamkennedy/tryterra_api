require 'test_helper'

class ActivityTest < Minitest::Test
  def test_get
    stubs = stub_get_request('activity?user_id=123', response: File.read('test/fixtures/activity.json'))
    client = TryTerra::Client.new(dev_id: 'fake', x_api_key: 'fake', stubs: stubs)
    activity = client.activity(user_id: '123', start_date: '2021-01-01')

    assert_equal TryTerra::Activity, activity.class
    assert_equal 'success', activity.status
  end
end

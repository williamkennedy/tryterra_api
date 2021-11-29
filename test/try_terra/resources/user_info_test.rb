require 'test_helper'

class UserInfoTest < Minitest::Test
  def test_get
    stubs = stub_get_request('userInfo?user_id=123', response: File.read('test/fixtures/user_info.json'))
    client = TryTerra::Client.new(dev_id: 'fake', x_api_key: 'fake', stubs: stubs)
    user_info = client.user_info(user_id: '123')

    assert_equal TryTerra::UserInfo, user_info.class
    assert_equal 'success', user_info.status
  end
end

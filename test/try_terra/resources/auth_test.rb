require 'test_helper'

class AuthTest < Minitest::Test
  def test_authenticate_user
    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      stub.post('/v2/auth/authenticateUser') do |env|
        [200,{ 'Content-Type': 'application/json' },File.read('test/fixtures/authenticate_user.json')]
      end
    end
    client = TryTerra::Client.new(dev_id: 'fake', x_api_key: 'fake', stubs: stubs)
    auth = client.auth.authenticate_user(resource: 'fitbit')

    assert_equal TryTerra::Auth, auth.class
    assert_equal 'success', auth.status
  end

  def test_deauthenticate_user
    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      stub.delete('/v2/auth/deauthenticateUser') do |env|
        [200,{ 'Content-Type': 'application/json' },File.read('test/fixtures/deauthenticate_user.json')]
      end
    end

    client = TryTerra::Client.new(dev_id: 'fake', x_api_key: 'fake', stubs: stubs)
    auth = client.auth.deauthenticate_user(user_id: 'user_id')

    assert_equal TryTerra::Auth, auth.class
    assert_equal 'success', auth.status

  end
end

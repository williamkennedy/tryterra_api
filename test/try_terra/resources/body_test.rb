require "test_helper"

class BodyTest < Minitest::Test
  def test_get
    stubs = stub_get_request("body?user_id=123", response: File.read("test/fixtures/body.json"))
    client = TryTerra::Client.new(dev_id: "fake", x_api_key: "fake", stubs: stubs)
    body = client.body(user_id: "123", start_date: "2021-01-01")

    assert_equal TryTerra::Body, body.class
    assert_equal "success", body.status
  end
end

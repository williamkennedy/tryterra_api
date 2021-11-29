require "test_helper"

class DailyTest < Minitest::Test
  def test_get
    stubs = stub_get_request("daily?user_id=123", response: File.read("test/fixtures/daily.json"))
    client = TryTerra::Client.new(dev_id: "fake", x_api_key: "fake", stubs: stubs)
    daily = client.daily(user_id: "123", start_date: "2021-01-01")

    assert_equal TryTerra::Daily, daily.class
    assert_equal "success", daily.status
  end
end

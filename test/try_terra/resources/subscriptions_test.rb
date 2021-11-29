require "test_helper"

class SubscriptionsTest < Minitest::Test
  def test_get
    stubs = stub_get_request("subscriptions", response: File.read("test/fixtures/subscriptions.json"))
    client = TryTerra::Client.new(dev_id: "fake", x_api_key: "fake", stubs: stubs)
    subscriptions = client.subscriptions

    assert_equal TryTerra::Subscriptions, subscriptions.class
    assert_equal "success", subscriptions.status
  end
end

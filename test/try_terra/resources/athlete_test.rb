require "test_helper"

class AthleteTest < Minitest::Test
  def test_get
    stubs = stub_get_request("athlete?user_id=123", response: File.read("test/fixtures/athlete.json"))
    client = TryTerra::Client.new(dev_id: "fake", x_api_key: "fake", stubs: stubs)
    athlete = client.athlete(user_id: "123")

    assert_equal TryTerra::Athlete, athlete.class
    assert_equal "success", athlete.status
  end
end

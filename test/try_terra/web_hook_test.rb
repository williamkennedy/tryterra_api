require "test_helper"

class WebHookTest < MiniTest::Test
  def setup
    @key = 'key'
    @signature_header = "t=12345678,v1=dca55eca8f595bd4d80250ab9609c7cbecec8e581c5c3822294f7c2ee1c99377"
    @data = '123'
  end

  def test_valid?
    webhook = TryTerra::WebHook.new(key: @key, signature_header: @signature_header, data: @data)
    assert webhook.valid?
  end

  def test_valid_false
    key = 'fake_key'
    webhook = TryTerra::WebHook.new(key: key, signature_header: @signature_header, data: @data)
    assert !webhook.valid?
  end
end

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "try_terra"

require "minitest/autorun"
require "faraday"

class Minitest::Test
  def stub_get_request(path, response:)
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get("/v2/#{path}") do |env|
        [200, {'Content-Type': "application/json"}, response]
      end
    end
  end
end

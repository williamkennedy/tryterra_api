module TryTerra
  class Client
    BASE_URL = 'https://api.tryterra.co/v2/'

    attr_reader :dev_id, :x_api_key, :stubs

    def initialize(dev_id:, x_api_key:, stubs: nil)
      @dev_id = dev_id
      @x_api_key = x_api_key
      @stubs = stubs
    end

    def auth
      AuthResource.new(self)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        conn.headers['dev-id'] = dev_id
        conn.headers['x-api-key'] = x_api_key

        conn.response :json, content_type: 'application/json'
        #for testing
        if @stubs
          conn.adapter :test, @stubs
        end
      end
    end
  end
end

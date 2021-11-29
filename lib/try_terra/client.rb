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

    def subscriptions(**params)
      SubscriptionsResource.new(self).get(params)
    end

    def user_info(**params)
      UserInfoResource.new(self).get(params)
    end

    def athlete(**params)
      AthleteResource.new(self).get(params)
    end

    def activity(**params)
      ActivityResource.new(self).get(params)
    end
    
    def body(**params)
      BodyResource.new(self).get(params)
    end

    def daily(**params)
      DailyResource.new(self).get(params)
    end

    def sleep(**params)
      SleepResource.new(self).get(params)
    end

    def menstruation(**params)
      MenstruationResource.new(self).get(params)
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

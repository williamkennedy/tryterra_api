module TryTerra
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    private

    def get_request(url, params)
      client.connection.get(url, params)
    end

    def post_request(url, params)
      client.connection.post(url) do |req|
        req.params = params
      end
    end

    def delete_request(url, params)
      client.connection.delete(url, params)
    end
  end
end

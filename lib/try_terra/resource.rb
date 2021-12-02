module TryTerra
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    private

    def get_request(url, params)
      handle_response client.connection.get(url, params)
    end

    def post_request(url, params)
      response = client.connection.post(url) do |req|
        req.params = params
      end
      handle_response(response)
    end

    def delete_request(url, params)
      handle_response client.connection.delete(url, params)
    end

    def handle_response(response)
      case response.status
      when 400
        raise Error, response.body["message"]
      when 401
        raise Error, response.body["message"]
      when 402
        raise Error, response.body["message"]
      when 403
        raise Error, "Forbidden"
      when 404
        raise Error, response.body["message"]
      when 500
        raise Error, "Possible Internal Server Error"
      end 
      response
    end
  end
end

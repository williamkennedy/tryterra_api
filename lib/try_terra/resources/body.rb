module TryTerra
  class BodyResource < Resource
    def get(params)
      Body.new(get_request("body", params).body)
    end
  end
end

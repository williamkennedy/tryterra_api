module TryTerra
  class SleepResource < Resource
    def get(**params)
      Sleep.new(get_request("sleep", params).body)
    end
  end
end

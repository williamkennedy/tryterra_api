module TryTerra
  class ActivityResource < Resource
    def get(**params)
      Activity.new(get_request('activity', params).body)
    end
  end
end


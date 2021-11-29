module TryTerra
  class DailyResource < Resource
    def get(**params)
      Daily.new(get_request('daily', params).body)
    end
  end
end


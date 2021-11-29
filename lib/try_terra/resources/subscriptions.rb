module TryTerra
  class SubscriptionsResource < Resource
    def get(**params)
      Subscriptions.new(get_request('subscriptions', params).body)
    end
  end
end

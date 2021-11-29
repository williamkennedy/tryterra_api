module TryTerra
  class UserInfoResource < Resource
    def get(**params)
      UserInfo.new(get_request('userInfo', params).body)
    end
  end
end


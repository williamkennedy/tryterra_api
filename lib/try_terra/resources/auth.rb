module TryTerra
  class AuthResource < Resource
    def authenticate_user(**params)
      Auth.new(post_request('auth/authenticateUser', params).body)
    end

    def deauthenticate_user(**params)
      Auth.new(delete_request('auth/deauthenticateUser', params).body)
    end
  end
end

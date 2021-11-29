module TryTerra
  class AthleteResource < Resource
    def get(**params)
      Athlete.new(get_request('athlete', params).body)
    end
  end
end


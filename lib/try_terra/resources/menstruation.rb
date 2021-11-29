module TryTerra
  class MenstruationResource < Resource
    def get(params)
      Menstruation.new(get_request("menstruation", params).body)
    end
  end
end

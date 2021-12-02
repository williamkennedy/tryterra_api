require "faraday"
require "faraday_middleware"

require "try_terra/version"

module TryTerra
  autoload :Error, "try_terra/error"
  autoload :Client, "try_terra/client"
  autoload :Resource, "try_terra/resource"
  autoload :Object, "try_terra/object"
  # webhook
  autoload :WebHook, "try_terra/web_hook"

  # Endpoints
  autoload :AuthResource, "try_terra/resources/auth"
  autoload :SubscriptionsResource, "try_terra/resources/subscriptions"
  autoload :UserInfoResource, "try_terra/resources/user_info"
  autoload :AthleteResource, "try_terra/resources/athlete"
  autoload :ActivityResource, "try_terra/resources/activity"
  autoload :BodyResource, "try_terra/resources/body"
  autoload :DailyResource, "try_terra/resources/daily"
  autoload :SleepResource, "try_terra/resources/sleep"
  autoload :MenstruationResource, "try_terra/resources/menstruation"

  # Objects
  autoload :Auth, "try_terra/objects/auth"
  autoload :Subscriptions, "try_terra/objects/subscriptions"
  autoload :UserInfo, "try_terra/objects/user_info"
  autoload :Athlete, "try_terra/objects/athlete"
  autoload :Activity, "try_terra/objects/activity"
  autoload :Body, "try_terra/objects/body"
  autoload :Daily, "try_terra/objects/daily"
  autoload :Sleep, "try_terra/objects/sleep"
  autoload :Menstruation, "try_terra/objects/menstruation"
end

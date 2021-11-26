require 'faraday'
require 'faraday_middleware'

require "try_terra/version"

module TryTerra
  autoload :Error, 'try_terra/error'
  autoload :Client, 'try_terra/client'
  autoload :Resource, 'try_terra/resource'
  autoload :Object, 'try_terra/object'


  # Endpoints
  autoload :AuthResource, 'try_terra/resources/auth'


  # Object
  autoload :Auth, 'try_terra/objects/auth'
end

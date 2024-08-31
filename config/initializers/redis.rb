require 'hiredis'
require 'active_support/cache/redis_cache_store'

begin
  redis = Redis.new
  pp redis.ping
rescue Exception => e
  pp "🚨🚨🚨 #{e.message}"
end

# UPDATE (03/02/2023): not required apparently
# My attempt to fix this inconsistent behavior of HiRedis. The issue is described here:
# https://github.com/redis/hiredis-rb/issues/40
# module ActiveSupport
#   module Cache
#     class RedisCacheStore < Store

#       HIREDIS_CONNECTION_MSG_REGEXP = /nodename nor servname provided/.freeze

#       private

#       def failsafe(method, returning: nil)
#         yield
#       rescue ::Redis::BaseConnectionError => e
#         handle_exception exception: e, method: method, returning: returning
#         returning
#       rescue StandardError => e
#         if e.message =~ HIREDIS_CONNECTION_MSG_REGEXP
#           handle_exception exception: e, method: method, returning: returning
#           returning
#         else
#           raise
#         end
#       end

#     end
#   end
# end

require 'hiredis'
require 'active_support/cache/redis_cache_store'

# My attempt to fix this inconsistent behavior of HiRedis. The issue is described here:
# https://github.com/redis/hiredis-rb/issues/40
module ActiveSupport
  module Cache
    class RedisCacheStore < Store

      HIREDIS_CONNECTION_MSG_REGEXP = /nodename nor servname provided/.freeze

      private

      def failsafe(method, returning: nil)
        yield
      rescue ::RuntimeError => e
        if e.message =~ HIREDIS_CONNECTION_MSG_REGEXP
          handle_exception exception: e, method: method, returning: returning
          returning
        else
          raise
        end
      rescue ::Redis::BaseConnectionError => e
        handle_exception exception: e, method: method, returning: returning
        returning
      end

    end
  end
end

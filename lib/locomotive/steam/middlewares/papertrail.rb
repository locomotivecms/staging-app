module Locomotive::Steam
  module Middlewares

    # Benchmark the Steam rendering in order to see
    # which site is taking most of the server time.
    class Papertrail

      attr_reader :app, :logger

      def initialize(app, opts = {})
        @app = app
      end

      def call(env)
        started_at = Time.now
        app.call(env).tap do |response|
          elapsed_time = ((Time.now - started_at) * 10000).truncate / 10.0
          $papertrail_logger.info([
            env['steam.request'].host, env['REQUEST_METHOD'].upcase, env['PATH_INFO'], response.first, env['steam.site']&.name, env['steam.site']&._id, elapsed_time
          ].join(' '))
        end
      end
    end

  end
end



module Locomotive::Steam
  module Middlewares

    # Sanitize the path from the previous middleware in order
    # to make it work for the renderer.
    #
    class ScoutApmTracker

      def initialize(app, opts = {})
        @app = app
      end

      def call(env)
        ScoutApm::Rack.transaction('[Steam] rendering app', env) do
          @app.call(env)
        end
      end

    end

  end
end

class AllowedHostCheckMiddleware
  PATH_REGEXP = /\A\/locomotive\/api\/allowed_host/mo.freeze

  def initialize(app)
    @app = app
  end

  def call(env)
    host = fetch_host(env)

    if host.nil?
      @app.call(env)
    elsif is_allowed_host?(host)
      [200, {}, ['OK']]
    else
      [404, {}, ['KO']]
    end
  end

  private

  def fetch_host(env)
    if env['REQUEST_METHOD'] == 'GET' && env['PATH_INFO'] =~ PATH_REGEXP
      request = Rack::Request.new(env)
      request.params['host']
    else
      nil
    end
  end

  def is_allowed_host?(host)
    host == Locomotive.config.host ||
    Locomotive::Site.match_domain(host).exists?
  end

end

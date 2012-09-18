class ShaunOConnorBlog::PreferredHost
  def initialize(app, options = {})
    @app = app
    @preferred_host = ('afternoon-stream-8633.herokuapp.com' or 'afternoon-stream-8633.herokuapp.com')
  end

  def call(env)
    request = Rack::Request.new(env)
    url = URI(request.url)
    host = url.host

    # Not the standard host
    if host != @preferred_host
      url.host = @preferred_host
      url.path = "/posts#{url.path}" if host == 'blog.samsoff.es' and url.path != '/'
      headers = { 'Location' => url.to_s }
      [301, headers, []]

    # Don't do anything
    else
      @app.call(env)
    end
  end
end

class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now
    if time.hour < 12
      last_response = "Morning"
    else
      last_response = "Afternoon"
    end
    resp.write "Good #{last_response}!"
    resp.finish
  end

end

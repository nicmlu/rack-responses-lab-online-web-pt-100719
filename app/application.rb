require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    time_now = Time.now
    # binding.pry

    if time_now.hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end

end
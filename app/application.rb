

class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.hour > 12
      resp.write /Afternoon/i
    else
      resp.write /Morning/i
    end

    # resp.write "Hello, World"
    resp.finish
  end

end
class Application

  def call(env)
    binding.pry
    resp = Rack::Response.new
    resp.write Time.now.hour < 12 ? 'Good Morning' : 'Good Afternoon'
    
    resp.finish
  end

end

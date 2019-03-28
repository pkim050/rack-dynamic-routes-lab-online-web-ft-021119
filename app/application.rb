class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry
    if req.path == "/items/"
      item_name = req.path.split("/items/").last
      binding.pry
      if @@items.include?(item_name)
        resp.write "Testing"
        resp.status = 200
      else
        resp.write "Route not found"
        resp.status = 404
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end

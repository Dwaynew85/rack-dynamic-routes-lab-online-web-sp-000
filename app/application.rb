class Application

  @@items = ["Apples", "Pears", "Bananas"]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    item_name = req.params["q"]

    if @@items.include?(item_name)
      resp.write "The price is..."
    elsif @@items.exclude?(item_name)
      resp.write "Item not found"
      resp.status 400
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end

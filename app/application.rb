class Application

  @@items = ["Apples", "Pears", "Bananas"]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM NAME>"
      resp.write "The price is..."
    else 
      resp.write "Route not found"
      resp.status = 404
    end 
    resp.finish
  end
end

    

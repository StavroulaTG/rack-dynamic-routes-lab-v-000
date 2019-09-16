class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack:Request.next

    if req.path=="/items"
      resp.write "You requested the items"
    else
      resp.write "Route not found"
      resp.status = "404"
    end
    resp.finish
  end
end

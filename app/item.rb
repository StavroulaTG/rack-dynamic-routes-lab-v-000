class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  if req.path=="/items"
    resp.write "You requested the items"
  else
    resp.write "Item not found"
    resp.status = "400"
  end
  resp.finish
end

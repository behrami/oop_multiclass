class Product

  def initialize(name,price,taxrate)
    @name=name
    @price=price
    @taxrate=taxrate
  end

  def price
    return @price
  end

  def net_price
    return @price*@taxrate+@price
  end

end

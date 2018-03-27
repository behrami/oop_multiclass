require_relative 'product.rb'

class Cart

  def initialize
    @store_product=[]
  end

  def add_product(product_obj)
    @store_product.push(product_obj)
    return @store_product
  end

  def remove_product(product_obj)
    @store_product.delete(product_obj)
    return @store_product
  end


  def total_cost_before
    temp_total=0
    @store_product.each do |product|
      temp_total+=product.price
    end
    return temp_total
  end

  def total_cost_after
    temp_total=0
    @store_product.each do |product|
      temp_total+=product.net_price
    end
    return temp_total
  end

end

product1= Product.new("glasses",100,0.13)
product2= Product.new("cake",10,0.13)
product3= Product.new("laptop",400,0.13)

cart_obj=Cart.new()
p cart_obj.add_product(product1)
p cart_obj.add_product(product2)
p cart_obj.add_product(product3)
puts

p cart_obj.remove_product(product2)
puts

p cart_obj.total_cost_before
p cart_obj.total_cost_after

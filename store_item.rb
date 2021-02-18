#Represent employee info as an array
#item1 = { item: "chair", color: "red", price: 50 }
#item2 = { color: "blue", price: 30 }
#item3 = { color: "green", price: 4000 }

#puts "#{chair[:color]}"

class Store
  attr_reader :item, :color
  attr_writer :price

  def initialize(input_options)
    @item = input_options[:item]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def print_info
    puts "the #{@item} is colored #{@color} and is worth #{@price} dollars."
  end
end

item1 = Store.new item: "chair", color: "red", price: 50
item2 = Store.new(item: "shirt", color: "blue", price: 20)
item3 = Store.new({ item: "car", color: "gray", price: 2000 })
puts item1.print_info
puts item2.print_info
puts item3.print_info

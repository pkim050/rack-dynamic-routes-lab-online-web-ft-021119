class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  def class_variable_set(array, class1, class2)
    array << class1
    array << class2
    array
  end
end

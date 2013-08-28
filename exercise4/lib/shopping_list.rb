require_relative "item"
class ShoppingList

  def initialize
    @item_list = []
  end

  def add(name, quantity)
    @item_list.push(Item.new(name, quantity))
  end

  def items(&block)
    instance_eval(&block)
  end

end
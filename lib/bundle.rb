require_relative 'cake'

class Bundle < Cake
  def initialize(items = [])
    @items = items
  end

  def add_item(item)
    @items << item
    self
  end

  def name
    return 'Bundle of: (empty)' if @items.empty?
    
    item_names = @items.map(&:name)
    "Bundle of: #{item_names.join(', ')}"
  end

  def price
    total_price = @items.sum(&:price)
    total_price * 0.9
  end
end

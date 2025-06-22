require_relative 'topping_decorator'

class Chocolate < ToppingDecorator
  def name
    if cake.name.include?(' with ')
      "#{cake.name} and 🍫"
    else
      "#{cake.name} with 🍫"
    end
  end

  def price
    cake.price + 0.1
  end
end

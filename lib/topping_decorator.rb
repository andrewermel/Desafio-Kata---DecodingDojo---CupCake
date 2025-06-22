require_relative 'cake'

class ToppingDecorator < Cake
  def initialize(cake)
    @cake = cake
  end

  protected

  attr_reader :cake
end

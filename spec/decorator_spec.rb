require 'spec_helper'

RSpec.describe 'Decorator Pattern' do
  describe 'name function' do
    it 'returns "🧁 with 🍫" for cupcake with chocolate' do
      decorated_cake = Chocolate.new(Cupcake.new)
      expect(decorated_cake.name).to eq('🧁 with 🍫')
    end

    it 'returns "🍪 with 🍫" for cookie with chocolate' do
      decorated_cake = Chocolate.new(Cookie.new)
      expect(decorated_cake.name).to eq('🍪 with 🍫')
    end

    it 'returns "🍪 with 🍫 and 🥜" for cookie with chocolate and nuts' do
      decorated_cake = Nuts.new(Chocolate.new(Cookie.new))
      expect(decorated_cake.name).to eq('🍪 with 🍫 and 🥜')
    end

    it 'returns "🍪 with 🥜 and 🍫" for cookie with nuts and chocolate' do
      decorated_cake = Chocolate.new(Nuts.new(Cookie.new))
      expect(decorated_cake.name).to eq('🍪 with 🥜 and 🍫')
    end

    it 'returns "🧁 with 🍫 and 🥜 and 🍬" for cupcake with multiple toppings' do
      decorated_cake = Sugar.new(Nuts.new(Chocolate.new(Cupcake.new)))
      expect(decorated_cake.name).to eq('🧁 with 🍫 and 🥜 and 🍬')
    end
  end

  describe 'price function' do
    it 'returns 1.1 for "🧁 with 🍫"' do
      decorated_cake = Chocolate.new(Cupcake.new)
      expect(decorated_cake.price).to eq(1.1)
    end

    it 'returns 2.1 for "🍪 with 🍫"' do
      decorated_cake = Chocolate.new(Cookie.new)
      expect(decorated_cake.price).to eq(2.1)
    end

    it 'returns 2.2 for "🍪 with 🥜"' do
      decorated_cake = Nuts.new(Cookie.new)
      expect(decorated_cake.price).to eq(2.2)
    end

    it 'calculates correct price for multiple toppings' do
      decorated_cake = Sugar.new(Nuts.new(Chocolate.new(Cupcake.new)))
      expect(decorated_cake.price).to be_within(0.01).of(1.4)
    end
  end
end
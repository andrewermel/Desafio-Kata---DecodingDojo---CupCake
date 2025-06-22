require 'spec_helper'

RSpec.describe 'Bundle Pattern' do
  describe Bundle do
    it 'can build a Bundle with 1 Cupcake and check price' do
      cupcake = Cupcake.new
      bundle = Bundle.new([cupcake])
      
      expect(bundle.name).to eq('Bundle of: 🧁')
      expect(bundle.price).to eq(0.9)
    end

    it 'can build a Bundle with 1 Cupcake and 1 Cookie and check price' do
      cupcake = Cupcake.new
      cookie = Cookie.new
      bundle = Bundle.new([cupcake, cookie])
      
      expect(bundle.name).to eq('Bundle of: 🧁, 🍪')
      expect(bundle.price).to eq(2.7)
    end

    it 'can build a Bundle with 2 Cupcakes and 1 Cookie and check price' do
      cupcake1 = Cupcake.new
      cupcake2 = Cupcake.new
      cookie = Cookie.new
      bundle = Bundle.new([cupcake1, cupcake2, cookie])
      
      expect(bundle.name).to eq('Bundle of: 🧁, 🧁, 🍪')
      expect(bundle.price).to eq(3.6)
    end

    it 'can build a bundle with decorated cakes' do
      decorated_cupcake = Chocolate.new(Cupcake.new)
      decorated_cookie = Nuts.new(Cookie.new)
      bundle = Bundle.new([decorated_cupcake, decorated_cookie])
      
      expect(bundle.name).to eq('Bundle of: 🧁 with 🍫, 🍪 with 🥜')
      expect(bundle.price).to be_within(0.01).of(2.97)
    end

    it 'can build a bundle with 1 bundle of 2 cakes and 1 Cupcake' do
      cupcake1 = Cupcake.new
      cookie = Cookie.new
      inner_bundle = Bundle.new([cupcake1, cookie])
      
      cupcake2 = Cupcake.new
      outer_bundle = Bundle.new([inner_bundle, cupcake2])
      
      expect(outer_bundle.name).to eq('Bundle of: Bundle of: 🧁, 🍪, 🧁')
      expect(outer_bundle.price).to eq(3.33)
    end

    it 'handles empty bundle' do
      empty_bundle = Bundle.new([])
      
      expect(empty_bundle.name).to eq('Bundle of: (empty)')
      expect(empty_bundle.price).to eq(0.0)
    end

    it 'allows adding items dynamically' do
      bundle = Bundle.new
      bundle.add_item(Cupcake.new)
      bundle.add_item(Cookie.new)
      
      expect(bundle.name).to eq('Bundle of: 🧁, 🍪')
      expect(bundle.price).to eq(2.7)
    end
  end
end
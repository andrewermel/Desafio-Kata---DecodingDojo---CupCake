require 'spec_helper'

RSpec.describe 'Basic Cakes' do
  describe Cupcake do
    let(:cupcake) { Cupcake.new }

    it 'can be put in a variable of type Cake' do
      cake = cupcake
      expect(cake).to be_a(Cake)
    end

    it 'returns "🧁" as name' do
      expect(cupcake.name).to eq('🧁')
    end

    it 'returns 1.0 as price' do
      expect(cupcake.price).to eq(1.0)
    end
  end

  describe Cookie do
    let(:cookie) { Cookie.new }

    it 'returns "🍪" as name' do
      expect(cookie.name).to eq('🍪')
    end

    it 'returns 2.0 as price' do
      expect(cookie.price).to eq(2.0)
    end
  end
end

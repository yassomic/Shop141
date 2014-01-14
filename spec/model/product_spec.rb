require 'spec_helper'

describe Product do
  context 'when given a valid item_id' do
    let(:product) do
      Product.create \
        item_id: 'B0077BZ6GI'
    end

    it 'contains name, price, amazonurl, and image' do
      expect(product.name).to eq 'Herschel Supply Co. Little America, Navy, One Size'
      expect(product.price).to eq "$84.99"
      # expect(product.amazonUrl).to eq 'http://www.amazon.com/Herschel-Supply-Co-Little-America/dp/tech-data/B0077BZ6GI%3FSubscriptionId%3DAKIAJMHPXNLMKSASBNYQ%26tag%3Dshop1410f-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D386001%26creativeASIN%3DB0077BZ6GI'
      expect(product.img).to eq 'http://ecx.images-amazon.com/images/I/41WK5jdfIQL.jpg'
    end
  end
end
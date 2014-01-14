require 'spec_helper'

describe Product do
  context 'when given a valid item_id' do
    let(:backpack) do
      Product.create \
        item_id: 'B0077BZ6GI'
    end

    it 'contains name, price, amazonurl, and image' do
      expect(backpack.name).to eq 'Herschel Supply Co. Little America, Navy, One Size'
      expect(backpack.price).to eq '$84.99'
      expect(backpack.amazonUrl).to eq 'http://www.amazon.com/Herschel-Supply-Co-Little-America/dp/tech-data/B0077BZ6GI%3FSubscriptionId%3DAKIAJMHPXNLMKSASBNYQ%26tag%3Dshop1410f-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D386001%26creativeASIN%3DB0077BZ6GI'
      expect(backpack.img).to eq 'http://ecx.images-amazon.com/images/I/41WK5jdfIQL.jpg'
    end
  end
end
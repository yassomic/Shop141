require 'spec_helper'

describe Product do
  context 'when given a valid item_id' do
    let(:product) do
      Product.create \
        item_id: 'B0077BZ6GI'
    end

    it 'contains name, price, and image' do
      expect(product.name).to eq 'Herschel Supply Co. Little America, Navy, One Size'
      expect(product.price).to eq "$84.99"
      expect(product.img).to eq 'http://ecx.images-amazon.com/images/I/41WK5jdfIQL.jpg'
    end
  end
end
require 'spec_helper'

describe Product do
  context 'when product is created' do
    let(:product) do
      Product.create \
        item_id: 'B0077BZ6GI'
    end

    it 'configures Vacuums call to the API' do
      expect(product.item_id).to eq 'B0077BZ6GI'
    end

    it '' do
    end

  end


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
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
  end

  context 'when given a valid item_id' do
    let(:product) do
      Product.create \
        item_id: 'B0077BZ6GI'
    end

    it 'contains name' do
      expect(product.name).to eq 'Herschel Supply Co. Little America, Navy, One Size'
    end

    it 'contains price' do
      expect(product.current_price).to eq '$84.99'
    end

    it 'contains image' do
      expect(product.img).to eq 'http://ecx.images-amazon.com/images/I/41WK5jdfIQL.jpg'
    end

    it 'contains a url' do
      expect(product.amazonUrl).not_to be_empty
    end
  end

  context 'when the updated price is lower than the previous price' do
    let(:product) do
      p = Product.create(item_id:'B0077BZ6GI', current_price:'$100.00')
        p.update_price
      end

    it 'updates the product with the new price' do
      expect(product.update_price).to eq '$65.00'
    end

  end





end












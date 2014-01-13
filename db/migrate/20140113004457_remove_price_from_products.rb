class RemovePriceFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :price, :integer
    add_column :products, :price, :text
  end
end

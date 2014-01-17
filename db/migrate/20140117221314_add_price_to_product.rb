class AddPriceToProduct < ActiveRecord::Migration
  def change
    remove_column :products, :price, :integer
    add_column :products, :updated_price, :integer
    add_column :products, :current_price, :integer
    add_column :products, :previous_price, :integer
  end
end

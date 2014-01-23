class ChangePriceColumns < ActiveRecord::Migration
  def change
    add_column :products, :price, :integer
    remove_column :products, :updated_price, :integer
    remove_column :products, :current_price, :integer
    remove_column :products, :previous_price, :integer
  end
end

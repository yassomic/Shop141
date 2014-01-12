class AddItemIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :item_id, :string
  end
end

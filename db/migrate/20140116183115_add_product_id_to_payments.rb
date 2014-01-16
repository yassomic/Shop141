class AddProductIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :product_id, :integer
  end
end

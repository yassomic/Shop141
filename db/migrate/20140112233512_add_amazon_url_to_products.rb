class AddAmazonUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :amazonUrl, :text
  end
end

class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.text :img
      t.text :description
      t.integer :affiliate_id

      t.timestamps
    end
  end
end

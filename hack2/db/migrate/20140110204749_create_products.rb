class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :charity, index: true
      t.text :description
      t.text :img

      t.timestamps
    end
  end
end

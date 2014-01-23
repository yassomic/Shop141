class AddSlugToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :slug, :string
    add_index :charities, :slug
  end
end

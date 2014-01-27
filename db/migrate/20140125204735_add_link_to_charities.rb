class AddLinkToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :link, :string
  end
end

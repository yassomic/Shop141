class AddCharityColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :charity_id, :intege
  end
end
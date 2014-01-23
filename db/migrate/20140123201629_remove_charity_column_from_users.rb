class RemoveCharityColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :charity_id, :integer
  end
end

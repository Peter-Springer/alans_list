class DropUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :user_id, :integer
    remove_column :listings, :category_id, :integer
    drop_table :users
    drop_table :categories
  end
end

class Listing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :token, :string
  end
end

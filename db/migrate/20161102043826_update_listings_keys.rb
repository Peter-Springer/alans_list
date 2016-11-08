class UpdateListingsKeys < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :image_file_name
    remove_column :listings, :image_content_type
    remove_column :listings, :image_file_size
    remove_column :listings, :image_updated_at
    add_column :listings, :image_url, :string
  end
end

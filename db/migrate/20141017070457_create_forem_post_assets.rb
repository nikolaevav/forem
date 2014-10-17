class CreateForemPostAssets < ActiveRecord::Migration
  def up
    if !table_exists?(:forem_post_assets)
      create_table :forem_post_assets do |t|
        t.string :asset_file_name
        t.string :asset_content_type
        t.integer :asset_file_size
        t.datetime :asset_updated_at
        t.datetime :created_at
        t.datetime :updated_at
        t.integer :post_id

        t.timestamps
      end
    end
  end


  def down
    if table_exists?(:forem_post_assets)
      drop_table(:forem_post_assets)
    end
  end
end

class AddForumIconFieldIntoForemForums < ActiveRecord::Migration
  def change
    if table_exists?(:forem_forums)
      add_column :forem_forums, :icon_file_name, :string
      add_column :forem_forums, :icon_content_type, :string
      add_column :forem_forums, :icon_file_size, :string
      add_column :forem_forums, :icon_updated_at, :string
    end
  end
end

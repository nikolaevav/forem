class AddSortFieldsToForemTables < ActiveRecord::Migration
  def up
    if table_exists? :forem_categories
      add_column :forem_categories, :sort_field, :int, :null => false, :default => 0
    end
    if table_exists? :forem_forums
      add_column :forem_forums, :sort_field, :int, :null => false, :default => 0
    end
  end

  def down
    if table_exists? :forem_categories
      remove_column :forem_categories, :sort_field
    end
    if table_exists? :forem_forums
      remove_column :forem_forums, :sort_field
    end
  end
end

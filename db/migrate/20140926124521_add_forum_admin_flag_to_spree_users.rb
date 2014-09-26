class AddForumAdminFlagToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :forem_admin, :int, :null => false, :default => 0
  end
end

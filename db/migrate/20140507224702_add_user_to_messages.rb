class AddUserToMessages < ActiveRecord::Migration
  def change
     add_column :messages, :user_id, :integer
     add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree
  end
end

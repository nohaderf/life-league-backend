class AddFriendToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :friend, :boolean
  end
end

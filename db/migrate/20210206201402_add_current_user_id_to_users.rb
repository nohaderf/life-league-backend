class AddCurrentUserIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :current_user_id, :integer
  end
end

class AddFriendAToFriendship < ActiveRecord::Migration[7.0]
  def change
    add_reference :friendships, :friend_a, null: false, foreign_key: { to_table: :users }
  end
end

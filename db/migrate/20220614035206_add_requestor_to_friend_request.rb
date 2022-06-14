class AddRequestorToFriendRequest < ActiveRecord::Migration[7.0]
  def change
    add_reference :friend_requests, :requestor, null: false, foreign_key: { to_table: :users }
  end
end

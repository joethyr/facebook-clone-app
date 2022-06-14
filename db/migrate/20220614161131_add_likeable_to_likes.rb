class AddLikeableToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :likeable, null: false, polymorphic: true
  end
end

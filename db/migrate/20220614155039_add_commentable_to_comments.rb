class AddCommentableToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :commentable, null: false, polymorphic: true
  end
end

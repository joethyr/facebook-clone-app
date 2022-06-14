class Comment < ApplicationRecord
  belongs_to :user
  has_many :likes
  t.references :commentable, null: false, polymorphic: true
end

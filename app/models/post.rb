class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :comments, as: :commentable

  def time_difference
    "Posted #{TimeDifference.between(updated_at, Time.current).humanize} ago"
  end
end

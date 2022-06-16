class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :comments, as: :commentable

  def post_time_difference
    TimeDifference.between(created_at, Time.current).humanize
  end
end

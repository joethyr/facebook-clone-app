class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requestor_friend_requests, foreign_key: "requestor_id", class_name: "FriendRequest"
  has_many :receiver_friend_requests, foreign_key: "receiver_id", class_name: "FriendRequest"
  has_many :friendships, ->(user) { where("friend_a_id = ? OR friend_b_id = ?", user.id, user.id) }
  has_many :friends, through: :friendships
  has_many :comments
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reqeustor_friend_requests, foreign_key: :requestor_id, class_name: :FriendRequest
  has_many :receiver_friend_requests, foreign_key: :receiver_id, class_name: :FriendRequest
end

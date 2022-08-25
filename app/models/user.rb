class User < ApplicationRecord
  has_many :event_users, dependent: :destroy
  has_many :movies, through: :event_users, dependent: :destroy
end

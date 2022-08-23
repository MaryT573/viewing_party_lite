class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :events_users, through: :events, dependent: :destroy
end

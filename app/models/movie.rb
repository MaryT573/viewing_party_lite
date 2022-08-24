class Movie < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users, dependent: :destroy
end

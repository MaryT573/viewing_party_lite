class Event < ApplicationRecord
  belongs_to :user

  has_many :events_users, dependent: :destroy
end

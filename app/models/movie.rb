class Movie < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users, dependent: :destroy

  has_many :event_users
  has_many :users, through: :event_users, dependent: :destroy

  validates_presence_of :start_time, :event_date, :duration, :movie_id, :title, :run_time, :image_url
end

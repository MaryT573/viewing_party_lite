class Movie < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users, dependent: :destroy

  validates_presence_of :start_time, :event_date, :duration, :movie_id, :title, :run_time, :image_url

  def host_name
    event_users.where(host: true).first.user.username
  end

  def attendees
    event_users.where(host: false).map do |event_user|
      event_user.user.username
    end
  end
end

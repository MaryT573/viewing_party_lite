class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  enum role: [:host, :attendee]
end

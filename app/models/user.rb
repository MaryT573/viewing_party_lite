class User < ApplicationRecord
  validates_presence_of :password_digest
  validates :username, uniqueness: true, presence: true
  has_many :event_users, dependent: :destroy
  has_many :movies, through: :event_users, dependent: :destroy

  has_secure_password

  def invited_events
    event_users.where(role: 1)
  end

  def created_events
    event_users.where(role: 0)
  end
end

require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should have_many(:event_users) }
  it { should have_many(:users).through(:event_users) }
end

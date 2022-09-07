require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:movies) }
  it { should have_many(:event_users) }
  it { should validate_presence_of(:password)}
  it {should validate_presence_of(:username)}
  it {should validate_uniqueness_of(:username)}
end

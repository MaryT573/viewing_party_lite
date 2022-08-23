require 'rails_helper'

RSpec.describe Users, type: :model do
  it { should have_many(:events) }
  it { should have_many(:events_users) }
end

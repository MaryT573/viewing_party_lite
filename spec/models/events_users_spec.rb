require 'rails_helper'

RSpec.describe EventsUsers, type: :model do
  it { should belong_to(:event) }
  it { should belong_to(:user) }
end

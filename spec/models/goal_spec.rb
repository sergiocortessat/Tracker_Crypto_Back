require 'rails_helper'

RSpec.describe Goal, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:coin) }
  end
end

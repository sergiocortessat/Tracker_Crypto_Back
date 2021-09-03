require 'rails_helper'

RSpec.describe Goal, type: :model do
  describe 'associations' do
    it { should have_many(:measurements) }
    it { should belong_to(:coin) }
  end
end

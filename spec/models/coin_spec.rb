require 'rails_helper'

RSpec.describe Coin, type: :model do
  describe 'associations' do
    it { should have_many(:users) }
    it { should have_many(:goals) }
  end
end

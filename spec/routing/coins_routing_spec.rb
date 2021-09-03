require 'rails_helper'

RSpec.describe CoinsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/coins').to route_to('coins#index')
    end

    it 'routes to #show' do
      expect(get: '/coins/1').to route_to('coins#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/coins').to route_to('coins#create')
    end
  end
end

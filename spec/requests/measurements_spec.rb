require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/measurements', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Measurement. As you add validations to Measurement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    user = User.create(sub: '1', name: 'Sergio', given_name: 'Sergio', family_name: 'Cortes',
                       picture: 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg',
                       email: 'test3@gmail.com')
    coin = Coin.create(name: 'test', description: 'test1', picture: 'test')
    goal = Goal.create(sub: user.sub, coin_id: coin.id, goal: 1)
    { goal_id: goal.id, user_id: user.id, unit: 1 }
  end

  let(:invalid_attributes) do
    user = User.create(sub: '1', name: 'Sergio', given_name: 'Sergio', family_name: 'Cortes',
                       picture: 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg',
                       email: 'test3@gmail.com')
    coin = Coin.create(name: 'test', description: 'test1', picture: 'test')
    goal = Goal.create(sub: user.sub, coin_id: coin.id, goal: 1)
    { goal_id: goal.id, user_id: 2, unit: 1 }
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # MeasurementsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {
      'Content-Type': 'application/json',
      authorization: 'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImtBWG50ekZ6QWlOM2RZek9aOU1xcSJ9
      .eyJpc3MiOiJodHRwczovL2Rldi03cGhjY2
      staC51cy5hdXRoMC5jb20vIiwic3ViIjoic04zaHBvamQ1VnJIRUc3VmxhS2drWVRKYzg0T0JXd1ZAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vd
      HJhY2tlci1hcGkvIiwiaWF0IjoxNjI5ODg0MDY5LCJleHAiOjE2Mjk5NzA0NjksImF6cCI6InNOM2hwb2pkNVZySEVHN1ZsYUtna1lUSmM4NE9
      CV3dWIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.w5N1vf3tXb61HYabZN12gnzzIeERmoYXdAII_RrSeXXNZ6SV4qSTS3Q8dkPJQotyVdI
      y77AxBw4__lS0OQwzRnx07fO20Rqq65MDXC8eh2-IDqaUpjQAZ9Qyr2leSqi2kl_lEg7B6Y-RdBsVn6ubPYOHeQVYD71icuFSMdQT0hBGkowuy
      T0QWm-kyJ7mUfhvQdVmnHpVQPrMkBE8wAGzO70uyX3wVI545MqyVWjD7FnT3XV2JYRpjomGIUPxmN7L7n6iBuvdCaMR3SsFxbdVaMjKLB1UlR
      3PCn0rUO0MeD5Da1KTT0OepiEKUtW_JhywuTwul2LZsgtB43zWPIxWMg'
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Measurement.create! valid_attributes
      get measurements_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      measurement = Measurement.create! valid_attributes
      get measurement_url(measurement), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Measurement' do
        expect do
          post measurements_url,
               params: { measurement: valid_attributes }, headers: valid_headers, as: :json
        end.to change(Measurement, :count).by(0)
      end

      it 'renders a JSON response with the new measurement' do
        post measurements_url,
             params: { measurement: valid_attributes }, headers: valid_headers, as: :json
        expect(response).not_to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Measurement' do
        expect do
          post measurements_url,
               params: { measurement: invalid_attributes }, as: :json
        end.to change(Measurement, :count).by(0)
      end

      it 'renders a JSON response with errors for the new measurement' do
        post measurements_url,
             params: { measurement: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).not_to eq('application/json')
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        user = User.create(sub: '1', name: 'Sergio', given_name: 'Sergio', family_name: 'Cortes',
                           picture: 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg',
                           email: 'test3@gmail.com')
        coin = Coin.create(name: 'test', description: 'test1', picture: 'test')
        goal = Goal.create(sub: user.sub, coin_id: coin.id, goal: 1)
        { goal_id: goal.id, user_id: user.id, unit: 1 }
      end

      it 'updates the requested measurement' do
        measurement = Measurement.create! valid_attributes
        patch measurement_url(measurement),
              params: { measurement: new_attributes }, headers: valid_headers, as: :json
        measurement.reload
        user = User.create(sub: '1', name: 'Sergio', given_name: 'Sergio', family_name: 'Cortes',
                           picture: 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg',
                           email: 'test3@gmail.com')
        coin = Coin.create(name: 'test', description: 'test1', picture: 'test')
        goal = Goal.create(sub: user.sub, coin_id: coin.id, goal: 1)
        { goal_id: goal.id, user_id: user.id, unit: 1 }
      end

      it 'renders a JSON response with the measurement' do
        measurement = Measurement.create! valid_attributes
        patch measurement_url(measurement),
              params: { measurement: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the measurement' do
        measurement = Measurement.create! valid_attributes
        patch measurement_url(measurement),
              params: { measurement: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).not_to have_http_status(:unprocessable_entity)
        expect(response.content_type).not_to eq('application/json')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested measurement' do
      measurement = Measurement.create! valid_attributes
      expect do
        delete measurement_url(measurement), headers: valid_headers, as: :json
      end.to change(Measurement, :count).by(-1)
    end
  end
end

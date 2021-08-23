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

RSpec.describe '/cryptos', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Crypto. As you add validations to Crypto, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    user = User.create(sub: 'google-oauth2|108940937413760665889', name: 'Sergio', given_name: 'Sergio', family_name: 'Cortes',
                       picture: 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', email: 'test3@gmail.com')
    { sub: user.sub, name: 'Bitcoin', description: 'Bitcoin buy' }
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # CryptosController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {
      'Content-Type': 'application/json',
      authorization: "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImtBWG50ekZ6QWlOM2RZek9aOU1xcSJ9.eyJpc3MiOiJodHRwczovL2Rldi03cGhjY2staC51cy5hdXRoMC5jb20vIiwic3ViIjoic04zaHBvamQ1VnJIRUc3VmxhS2drWVRKYzg0T0JXd1ZAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vdHJhY2tlci1hcGkvIiwiaWF0IjoxNjI5NzMyMzE2LCJleHAiOjE2Mjk4MTg3MTYsImF6cCI6InNOM2hwb2pkNVZySEVHN1ZsYUtna1lUSmM4NE9CV3dWIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.d-WC_7i0WbT55aUzkarJbVnQv_9-ZglOnQmch5PpXVpCRn6uXcqGLaNGlujyX8YjAZGsB13NuigcdTcpEMgKZjFaD8p5dcxdkxaGsmDt34Ha6gOcIctSu54b3M2lJQooTkvE_9ZTVzzW6yihBGgJ2EbVX3ybf6_QYWtTN5xfZ2a73NtiaOHrKhRNtKfKOhEDiIGmOxNpdrjxHOejx0WA97WV4YKwquDLbX1CeZMLS4ZvneqfgrelTEQQcpSGZt0qYECWWUTWgcr_Z3Ap1UWewFcvsJxZGsVQZzLuMxU_iC-vPilX2EzP-z3aTxRbcnRNmOPvTMaaLEL99RrRPHH8dw"
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Crypto.create! valid_attributes
      get cryptos_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      crypto = Crypto.create! valid_attributes
      get crypto_url(crypto), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Crypto' do
        expect do
          post cryptos_url,
               params: { crypto: valid_attributes }, headers: valid_headers, as: :json
        end.to change(Crypto, :count).by(1)
      end

      it 'renders a JSON response with the new crypto' do
        post cryptos_url,
             params: { crypto: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Crypto' do
        expect do
          post cryptos_url,
               params: { crypto: invalid_attributes }, as: :json
        end.to change(Crypto, :count).by(-1)
      end

      it 'renders a JSON response with errors for the new crypto' do
        post cryptos_url,
             params: { crypto: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        user = User.create(sub: 'google-oauth2|108940937413760665889', name: 'Sergio', given_name: 'Sergio', family_name: 'Cortes',
          picture: 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', email: 'test3@gmail.com')
{ sub: user.sub, name: 'Etherum', description: 'Etherum buy' }
      end

      it 'updates the requested crypto' do
        crypto = Crypto.create! valid_attributes
        patch crypto_url(crypto),
              params: { crypto: new_attributes }, headers: valid_headers, as: :json
        crypto.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the crypto' do
        crypto = Crypto.create! valid_attributes
        patch crypto_url(crypto),
              params: { crypto: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the crypto' do
        crypto = Crypto.create! valid_attributes
        patch crypto_url(crypto),
              params: { crypto: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested crypto' do
      crypto = Crypto.create! valid_attributes
      expect do
        delete crypto_url(crypto), headers: valid_headers, as: :json
      end.to change(Crypto, :count).by(-1)
    end
  end
end

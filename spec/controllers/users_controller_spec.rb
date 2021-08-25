require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:name) { 'simple name' }
  let(:valid_attributes) do
    { name: 'test', email: 'test@gmail.com' }
  end

  let(:invalid_attributes) { { name: '', email: '@gmail.com' } }
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      user = User.create! valid_attributes
      get :show, params: { id: user.to_param }, session: valid_session
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new User' do
        expect do
          post :create, params: { user: valid_attributes }, session: valid_session
        end.to change(User, :count).by(1)
      end

      it 'renders a JSON response with the new user' do
        post :create, params: { user: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new user' do
        post :create, params: { user: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:internal_server_error)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { name: 'update', emial: 'update@gmailcom' }
      end

      it 'updates the requested user' do
        user = User.create! valid_attributes
        put :update, params: { id: user.to_param, user: new_attributes }, session: valid_session
        user.reload
      end

      it 'renders a JSON response with the user' do
        user = User.create! valid_attributes

        put :update, params: { id: user.to_param, user: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the user' do
        user = User.create! valid_attributes

        put :update, params: { id: user.to_param, user: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:bad_request)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested user' do
      user = User.create! valid_attributes
      expect do
        delete :destroy, params: { id: user.to_param }, session: valid_session
      end.to change(User, :count).by(-1)
    end
  end
end

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:name) { 'simple name' }
  let(:valid_user_attributes) do
    { name: 'test', email: 'test@gmail.com' }
  end
  let(:user) {User.create! valid_user_attributes}
  let(:valid_session) { {} }
  let(:valid_attributes) do
    { name: user.name}
  end
  
  describe 'GET #index' do
    it 'returns a success response' do
      get :logged_in, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Session' do
        post :create, params: { session: valid_attributes }, session: valid_session
        expect(response.status).to eq(200)
      end

      it 'renders a JSON response with the new session' do
        post :create, params: { session: valid_attributes }, session: valid_session
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested user' do
      session[:user_id] = user.id
      expect do
        delete :destroy, params: { id: user.id }, session: valid_session
      end.to change(session, :count).by(-1)
    end
  end
end

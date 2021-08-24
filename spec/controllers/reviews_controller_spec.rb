require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let(:name) { 'simple name' }
  let(:valid_hotel_attributes) do
    { name: 'Learn Elmo', description: 'nice hotel', price_nigth: 34, services: 'pool,room service, buffet',
      img_url: 'https://kjiovwbe.jpg' }
  end
  let(:valid_user_attributes) do
    { name: 'test', email: 'test@gmail.com' }
  end

  let(:valid_attributes) do
    { title: 'test', body: 'test review', score: 5, hotel_id: hotel.id }
  end

  let(:invalid_attributes) do
    { title: '', body: 'test review', score: 5, hotel_id: hotel.id }
  end

  let(:user) { User.create! valid_user_attributes }
  let(:hotel) { Hotel.create! valid_hotel_attributes }
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, params: { user_id: user.id }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      review = user.reviews.create! valid_attributes
      get :show, params: { user_id: user.id, id: review.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Review' do
        expect do
          post :create, params: { user_id: user.id, review: valid_attributes }, session: valid_session
        end.to change(Hotel, :count).by(1)
      end

      it 'renders a JSON response with the new review' do
        post :create, params: { user_id: user.id, review: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new review' do
        post :create, params: { user_id: user.id, review: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested review' do
      review = user.reviews.create! valid_attributes
      expect do
        delete :destroy, params: { user_id: user.id, id: review.to_param }, session: valid_session
      end.to change(Hotel, :count).by(0)
    end
  end
end

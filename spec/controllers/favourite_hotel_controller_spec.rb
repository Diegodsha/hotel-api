require 'rails_helper'

RSpec.describe FavouritesController, type: :controller do
  let(:valid_user_attributes) do
    { name: 'test', email: 'test@gmail.com' }
  end

  let(:valid_hotel_attributes) do
    { name: 'Learn Elmo', description: 'nice hotel', price_nigth: 34, services: 'pool,room service, buffet',
      img_url: 'https://kjiovwbe.jpg' }
  end

  let(:invalid_attributes) { { user_id: nil, hotel_id: nil } }

  let(:name) { 'simple name' }
  let(:user) { User.create! valid_user_attributes }
  let(:hotel) { Hotel.create! valid_hotel_attributes }
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, params: { user_id: user.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      favourite_hotel = FavouriteHotel.create!(user_id: user.id, hotel_id: hotel.id)
      get :show, params: { user_id: user.to_param, id: favourite_hotel.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new FavouriteHotel' do
        expect do
          post :create,
               params: { user_id: user.to_param,
                         favourite_hotel: { user_id: user.to_param, hotel_id: hotel.to_param } },
               session: valid_session
        end.to change(FavouriteHotel, :count).by(1)
      end
    end

    it 'renders a JSON response with the new favourite hotel' do
      post :create,
           params: { user_id: user.to_param, favourite_hotel: { user_id: user.to_param, hotel_id: hotel.to_param } },
           session: valid_session
      expect(response).to have_http_status(:created)
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new hotel' do
        post :create, params: { user_id: user.to_param, favourite_hotel: { user_id: nil, hotel_id: nil } },
                      session: valid_session
        expect(response).to have_http_status(:bad_request)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested hotel' do
      favourite_hotel = FavouriteHotel.create!(user_id: user.id, hotel_id: hotel.id)
      expect do
        delete :destroy, params: { user_id: user.to_param, hotel_id: favourite_hotel.hotel_id }, session: valid_session
      end.to change(FavouriteHotel, :count).by(-1)
    end
  end
end

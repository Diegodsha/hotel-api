require 'rails_helper'

RSpec.describe 'Hotels API', type: :request do
  # initialize test data
  let!(:hotels) { create_list(:hotel, 10) }
  let(:id) { hotels.first.id }
  let(:name) { 'simple name' }

  describe 'GET /hotels' do
    before { get '/hotels' }

    it 'returns hotels' do
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /hotels/:id
  describe 'GET /hotels/:id' do
    before { get "/hotels/#{id}" }

    context 'when the record exists' do
      it 'returns the hotel' do
        expect(json).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  # Test suite for POST /hotels
  describe 'POST /hotels' do
    # valid payload
    let(:valid_attributes) do
      { hotel: { name: 'Learn Elm', description: 'nice hotel', price_nigth: 34, services: 'pool,room service, buffet',
                 img_url: 'https://kjiovwbe.jpg' } }
    end

    let(:invalid_attributes) { { hotel: { name: '', description: '', price_nigth: nil, services: '', img_url: '' } } }

    context 'when the request is valid' do
      before { post '/hotels', params: valid_attributes }

      it 'creates a hotel' do
        expect(json['name']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/hotels', params: invalid_attributes }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  # Test suite for PUT /hotels/:id
  describe 'PUT /hotels/:id' do
    let(:valid_attributes) do
      { hotel: { name: 'Learn Elmo', description: 'nice hotel', price_nigth: 34, services: 'pool,room service, buffet',
                 img_url: 'https://kjiovwbe.jpg' } }
    end

    context 'when the record exists' do
      before { put "/hotels/#{id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  # Test suite for DELETE /hotels/:id
  describe 'DELETE /hotels/:id' do
    before { delete "/hotels/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end

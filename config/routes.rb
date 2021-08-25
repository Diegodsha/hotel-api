Rails.application.routes.draw do
  resources :sessions, only: [:create, :logged_in, :destroy]

  resources :users do
    resources :reviews, only: [:create, :index, :show, :destroy]
    post 'review/hotel', to: 'reviews#create'
    resources :favourites, only: [:create, :index, :show, :destroy]
    post 'favourite/hotel', to: 'favourites#create'
    delete 'favourite/hotel/:hotel_id', to: 'favourites#destroy'
  end

  get 'logged_in', to: 'sessions#logged_in'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
    resources :hotels do
      resources :reviews, only: [:create, :index, :show, :destroy]
      get 'hotel_reviews', to: 'reviews#hotel_reviews'
    end
end

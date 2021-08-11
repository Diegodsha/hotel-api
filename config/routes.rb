Rails.application.routes.draw do
  resources :sessions

  resources :users do
    resources :reviews
    post 'review/hotel', to: 'reviews#create'
    resources :favourites
    post 'favourite/hotel', to: 'favourites#create'
  end

  get 'logged_in', to: 'sessions#logged_in'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
    resources :hotels do
      resources :reviews, only: [:create, :index, :show, :destroy]
      get 'hotel_reviews', to: 'reviews#hotel_reviews'
    end
end

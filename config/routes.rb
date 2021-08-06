Rails.application.routes.draw do
  resources :sessions

  resources :users do
    # post 'signup', to: 'users#create'
    resources :reviews
    post 'review/hotel', to: 'reviews#create'
    resources :favourites
    post 'favourite/hotel', to: 'favourites#create'
  end

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # namespace :api do
  #  namespace :v1 do
    resources :hotels do
      resources :reviews, only: [:create, :index, :show, :destroy]
      # post 'review', to: 'reviews#create'
    end
  # end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

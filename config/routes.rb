Rails.application.routes.draw do
  get 'reviews/create'
  devise_for :users
  root to: 'pages#home'
  resources :items do
    resources :bookings, only: %i[new create]
    resources :reviews, only: :create
  end
  resources :bookings, only: %i[index destroy edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users do
  #   resources :items, only: [:edit, :update, :show]
  # end
  resources :items do
    collection do
      get :search
    end
      resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

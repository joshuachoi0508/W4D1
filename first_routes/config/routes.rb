Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :update, :destroy, :create]
  
  resources :artworks, only: [:index, :show, :update, :destroy, :create]
  
  resources :artwork_shares, only: [:index, :create, :destroy]
end

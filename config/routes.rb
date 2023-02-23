Rails.application.routes.draw do
  # verb 'path', to: 'controller#action'

  # See all restaurants
  get 'restaurants', to: 'restaurants#index'

  # Create a restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # See one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # Delete a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants, except: [:destroy]
  # resources :restaurants, only: [:index, :show]
end

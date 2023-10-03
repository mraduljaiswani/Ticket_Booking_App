Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :movies

  resources :venues
  
  resources :shows

  resources :bookings
  
  resources :seats

  resources :shows do
    collection do
      get 'search'
    end
  end
  # resources :shows, only: [:show]

  # resources :movies do
  #   member do
  #     # get 'edit'
  #     # patch 'update'
  #     # delete 'delete_movie' => 'movies#destroy', as: :delete_movie
  #     # get 'confirm_delete'
  #     # delete 'delete_movie'
  #   end
  # end

  # resources :venues do
  #   member do
  #     get 'edit'
  #     patch 'update'
  #   end
  # end


  root 'application#root'

end

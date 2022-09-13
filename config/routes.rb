Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'books#index'

  resources :books

  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

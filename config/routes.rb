Rails.application.routes.draw do
  # get '/index', to: "kittens#index"
  # get 'kittens/new'
  # get 'kittens/create'
  # get 'kittens/show'
  # get 'kittens/update'
  # get 'kittens/edit'
  # get 'kittens/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "kittens#index"
  resources :kittens


end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/pets" => "pets#index"
  post "/pets" => "pets#create"
  
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end

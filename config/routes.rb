Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "students#index"
  # Defines the root path route ("/")
  # root "articles#index"
  get "/search", to: "students#search_student"
end

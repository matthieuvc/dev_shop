Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "webdevs", to: "webdevs#index"
  get "webdevs/new", to: "webdevs#new"
  post "webdevs", to: "webdevs#create"
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "webdevs", to: "webdevs#index"
  get "webdevs/new", to: "webdevs#new"
  post "webdevs", to: "webdevs#create"
  get "webdevs/:id", to: "webdevs#show", as: :webdev
  get "webdevs/:id/edit", to: "webdevs#edit", as: :webdevedit
  patch "webdevs/:id", to: "webdevs#update"
  
  resources :webdevs do
    resources :reservations, only: [:new, :create, :show]
  end

end

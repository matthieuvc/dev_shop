Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :webdevs do
    resources :reservations, only: [:new, :create, :show] do
      member do
        patch :approve
        patch :decline
      end
    end
  end
end

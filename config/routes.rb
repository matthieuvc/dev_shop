Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  resources :webdevs do
    resources :reservations, only: [:new, :create, :show] do
      member do
        patch :approve
      end
    end
  end
end

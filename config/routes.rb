Rails.application.routes.draw do
  root "home#index"
  get "random_shirt", to: "random_shirt#random"
  resources :shirts, only: [:index, :show]
  resources :lessons, only: [:index, :show, :new, :create]
  get 'sign-in', to: "sessions#new"
  post 'sign-in', to: "sessions#create"
  delete 'sign-out', to: "sessions#destroy"

  get 'sign-up', to: "registrations#new"
  post 'sign-up', to: "registrations#create"
end

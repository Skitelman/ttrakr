Rails.application.routes.draw do
  get 'lessons/index'

  get 'lessons/show'

  get 'lessons/new'

  get 'lessons/create'

  root "home#index"
  get "random_shirt", to: "random_shirt#random"
  # get "shirts", to: "shirts#index"
  # get "shirts/:id", to: "shirts#show"
  resources :shirts, only: [:index, :show]
  resources :lessons, only: [:index, :show, :new, :create]
end

=begin
get shirts => all
get shirts/7 => One shirt
get shirts/new => A form to create a new shirt
get shirts/7/edit => all
=end

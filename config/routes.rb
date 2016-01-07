Rails.application.routes.draw do
  root "home#index"
  get "random_shirt", to: "random_shirt#random"
  # get "shirts", to: "shirts#index"
  # get "shirts/:id", to: "shirts#show"
  resources :shirts, only: [:index, :show]
end

=begin
get shirts => all
get shirts/7 => One shirt
get shirts/new => A form to create a new shirt
get shirts/7/edit => all
=end

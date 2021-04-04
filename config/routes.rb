Rails.application.routes.draw do
  root "lists#index"

  # get "/lists", to: "lists#index"
  # get 'cards/index'


  resources :lists
  resources :cards

end

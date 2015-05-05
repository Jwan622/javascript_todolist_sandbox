Rails.application.routes.draw do
  get 'items/update'

  get 'lists/index'

  root to: "lists#index"
  resources :items
end

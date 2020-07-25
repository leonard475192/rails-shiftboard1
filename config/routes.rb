Rails.application.routes.draw do
  resources :shift_boards
  resources :admin_users
  devise_for :admin_accouts
  resources :board_users
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

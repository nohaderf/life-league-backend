Rails.application.routes.draw do
  resources :user_friends
  resources :dedicated_times
  resources :tasks
  resources :user_leagues
  resources :users
  resources :leagues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

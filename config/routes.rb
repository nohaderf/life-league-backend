Rails.application.routes.draw do
  resources :users
  resources :leagues
  resources :tasks
  resources :dedicated_times
  resources :user_leagues
  resources :league_tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

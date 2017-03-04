Rails.application.routes.draw do
  root 'landing_pages#index'

  resources :game_sessions, only: [:create, :show, :update]
end

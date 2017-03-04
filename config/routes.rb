Rails.application.routes.draw do
  get '/' => 'landing_pages#index'
  post '/game_sessions' => 'game_sessions#create'
  get '/game_sessions/:id' => 'game_sessions#show', as: :game_session
  patch '/game_sessions/:id' => 'game_sessions#update', as: :update_game_session
end

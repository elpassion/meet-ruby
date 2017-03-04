Rails.application.routes.draw do
  get '/' => 'landing_pages#index'
  post '/game_sessions' => 'game_sessions#create'
  get '/game_sessions/:id' => 'game_sessions#show', as: :game_session
end

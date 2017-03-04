class GameSessionsController < ApplicationController
  before_action :set_game_session, only: [:show, :update]

  def create
    @game_session = GameSession.create

    Game.new(@game_session).start!

    redirect_to @game_session
  end

  def update
    Game.new(@game_session).hit!

    redirect_to @game_session
  end

  private

  def set_game_session
    @game_session = GameSession.find(params[:id])
  end
end

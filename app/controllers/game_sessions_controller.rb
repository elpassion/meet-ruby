class GameSessionsController < ApplicationController
  def create
    @game_session = GameSession.create(
        cards: [Card.new('A', :spades), Card.new('3', :hearts)]
    )

    redirect_to @game_session
  end

  def show
    @game_session = GameSession.find(params[:id])
  end
end

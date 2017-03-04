class GameSessionsController < ApplicationController
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  CARD_SUITS  = %i(clubs diamonds hearts spades)

  before_action :set_game_session, only: [:show, :update]

  def create
    @game_session = GameSession.create(cards: Array.new(2) { random_card })

    redirect_to @game_session
  end

  def update
    @game_session.cards << random_card
    @game_session.save

    redirect_to @game_session
  end

  private

  def set_game_session
    @game_session = GameSession.find(params[:id])
  end
  
  def random_card
    Card.new(CARD_VALUES.sample, CARD_SUITS.sample)
  end
end

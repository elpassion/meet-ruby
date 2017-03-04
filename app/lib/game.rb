class Game
  delegate :bust?, :black_jack?, to: :calculator

  def initialize(game_session, deck = RandomDeck.new)
    @game_session = game_session
    @deck         = deck
  end

  def start!
    game_session.cards += Array.new(2) { deck.draw }
    game_session.save
  end

  def hit!
    game_session.cards << deck.draw
    game_session.save
  end

  private

  attr_reader :game_session, :deck

  def calculator
    BlackJackCalculator.new.tap { |c| c.add_cards *game_session.cards.map(&:value) }
  end
end

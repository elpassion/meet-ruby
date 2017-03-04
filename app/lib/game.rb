class Game < Struct.new(:game_session)
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  CARD_SUITS  = %i(clubs diamonds hearts spades)

  def start!
    game_session.cards += Array.new(2) { random_card }
    game_session.save
  end

  def hit!
    game_session.cards << random_card
    game_session.save
  end

  private

  def random_card
    Card.new(CARD_VALUES.sample, CARD_SUITS.sample)
  end
end

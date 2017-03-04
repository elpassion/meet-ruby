class RandomDeck
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  CARD_SUITS  = %i(clubs diamonds hearts spades)

  def draw
    Card.new(CARD_VALUES.sample, CARD_SUITS.sample)
  end
end
class LandingPagesController < ApplicationController
  def index
    @sample_cards = [
        Card.new('J', :clubs),
        Card.new('Q', :diamonds),
        Card.new('K', :hearts),
        Card.new('A', :spades)
    ]
  end
end

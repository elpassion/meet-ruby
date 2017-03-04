require 'rails_helper'

class TestDeck < Struct.new(:sequence)
  def draw
    sequence.rotate![-1]
  end
end

RSpec.describe Game do
  let(:game_session) { GameSession.create }

  subject { Game.new(game_session) }

  describe '#start!' do
    it 'starts the game with 2 cards' do
      expect { subject.start! }.to change { game_session.reload.cards.count }.from(0).to(2)
    end
  end

  describe '#hit!' do
    it 'adds new random card' do
      expect { subject.hit! }.to change { game_session.reload.cards.count }.by(1)
    end
  end

  describe '#bust?' do
    subject { Game.new(game_session, TestDeck.new(test_cards)) }

    let(:test_cards) { [Card.new('Q', :hearts), Card.new('8', :diamonds), Card.new('7', :spades)] }

    it 'returns true for cards that sum up to 22' do
      3.times { subject.hit! }

      expect(subject.bust?).to be_truthy
    end
  end

  describe '#black_jack?' do
    subject { Game.new(game_session, TestDeck.new(test_cards)) }

    let(:test_cards) { [Card.new('Q', :hearts), Card.new('A', :diamonds)] }

    it 'returns true for cards that sum up to 21' do
      2.times { subject.hit! }

      expect(subject.black_jack?).to be_truthy
    end
  end
end

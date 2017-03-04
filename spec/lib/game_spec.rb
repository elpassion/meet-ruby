require 'rails_helper'


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
end

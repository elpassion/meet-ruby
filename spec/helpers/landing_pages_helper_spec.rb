require 'rails_helper'

RSpec.describe LandingPagesHelper, type: :helper do
  describe '#suit_symbol' do
    subject { helper.suit_symbol(suit) }

    context 'given hearts' do
      let(:suit) { :hearts }

      it 'given hearts suit' do
        expect(subject).to eq '♥'
      end
    end

    context 'given diamonds' do
      let(:suit) { :diamonds }

      it 'given diamonds suit' do
        expect(subject).to eq '♦'
      end
    end

    context 'given clubs' do
      let(:suit) { :clubs }

      it 'given clubs suit' do
        expect(subject).to eq '♣'
      end
    end

    context 'given spades' do
      let(:suit) { :spades }


      it 'given spades suit' do
        expect(subject).to eq '♠'
      end
    end
  end
end
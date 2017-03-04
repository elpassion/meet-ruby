require 'rails_helper'

RSpec.feature "GameSessions", type: :feature do

  it 'starts a new game' do
    visit '/'

    click_on 'Start New Game'

    expect(page).to have_css 'ul.cards li', count: 2
  end

  it 'adds a new card after clicking hit' do
    visit '/'

    click_on 'Start New Game'

    expect { click_on 'Hit' }.to change { page.all('ul.cards li').count }.from(2).to(3)
  end

end

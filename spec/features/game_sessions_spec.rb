require 'rails_helper'

RSpec.feature "GameSessions", type: :feature do

  it 'starts a new game' do
    visit '/'

    click_on 'Start New Game'

    expect(page).to have_css 'ul.cards li', count: 2
  end

end

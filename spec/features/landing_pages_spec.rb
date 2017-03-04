require 'rails_helper'

RSpec.feature 'Landing Pages', type: :feature do
  before do
    visit '/'
  end

  it 'displays Black Jack title' do
    expect(page).to have_content 'Black Jack'
  end

  it 'displays cards in 4 different suits' do
    expect(page).to have_content 'J ♣ Q ♦ K ♥ A ♠'
  end

end

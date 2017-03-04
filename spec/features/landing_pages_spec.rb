require 'rails_helper'

RSpec.feature 'Landing Pages', type: :feature do
  before do
    visit '/'
  end

  it 'displays Black Jack title' do
    expect(page).to have_content 'Black Jack'
  end

end

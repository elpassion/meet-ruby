require 'rails_helper'

RSpec.feature 'Landing Pages', type: :feature do

  it 'displays landing page' do
    visit '/'
  end

end

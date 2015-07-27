require 'rails_helper'

describe 'the unauthenticated user', type: :feature do
  context 'visits the root page' do
    
    it 'displays the welcome message' do
      visit root_path
      
      expect(page).to have_content("Digital Cellar")
      expect(page).to have_content("Your personal wine inventory solution")
      expect(page).to have_link("Get Started!")
    end
  end
end

require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    visit root_path
    click_on 'Add new todo'
    fill_in 'Title', with: 'Go to dentist'
    click_on 'Submit'
    expect(page).to have_css '.todos li', text: 'Go to dentist'
  end
end

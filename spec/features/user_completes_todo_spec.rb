require 'rails_helper'

feature 'user marks a todo as complete' do
  scenario 'successfully' do
    sign_in
    click_on 'Add new todo'
    fill_in 'Title', with: 'Eat some food'
    click_on 'Submit'
    click_on 'Mark complete'
    expect(page).to have_css '.todos li.completed', text: 'Eat some food'
  end
end


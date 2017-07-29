require 'rails_helper'

feature 'user marks a todo as complete' do
  scenario 'successfully' do
    sign_in
    create_todo 'Eat some food'
    click_on 'Mark complete'
    expect(page).to display_completed_todo 'Eat some food'
  end
end


require 'rails_helper'

feature 'user marks a todo as incomplete' do
  scenario 'successfully' do
    sign_in
    create_todo 'Eat some food'
    click_on 'Mark complete'
    click_on 'Mark incomplete'
    expect(page).not_to display_completed_todo 'Eat some food'
    expect(page).to display_todo 'Eat some food'
  end
end

require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    create_todo 'Go to dentist'
    expect(page).to display_todo 'Go to dentist'
  end
end

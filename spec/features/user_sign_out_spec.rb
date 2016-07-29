feature 'creating new user' do
  scenario 'storing a user profile' do
    sign_up
    click_button 'Sign out'
    expect(page).to have_content 'goodbye!'
    expect(page).not_to have_content('Welcome,')
  end
end

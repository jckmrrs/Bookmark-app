feature 'Viewing bookmark list' do
  scenario 'Signed in and viewing bookmarks' do
    visit '/'
    fill_in :username, with: 'Dan'
    click_button 'Submit'
    expect(page).to have_content "Welcome Dan"
  end
end
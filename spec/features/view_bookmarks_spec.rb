require_relative 'web_helpers'

feature 'Viewing bookmark list' do
  scenario 'Signed in and viewing bookmarks' do
    sign_in
    expect(page).to have_content "Welcome Jack"
  end

  scenario 'A user can see their bookmarks' do
    sign_in
    add_link
    expect(page).to have_content('http://www.amazon.co.uk')
  end
end

require_relative 'web_helpers'

feature 'Adding a link to the database' do
  scenario 'user gives a URL which is added to the database' do
    sign_in
    add_link
    expect(Bookmarks.all).to include("http://www.amazon.co.uk")
  end
end

def sign_in
  visit '/'
  fill_in :username, with: 'Jack'
  click_button 'Submit'
end

def add_link
  fill_in :url, with: 'http://www.amazon.co.uk'
  click_button 'Add URL'
end

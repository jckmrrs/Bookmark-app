require 'bookmarks'

RSpec.describe Bookmarks do
  describe '.all' do
    it "Returns all of the user's bookmarks" do
      Bookmarks.add("https://www.google.com")
      Bookmarks.add("https://www.ford.com")
      bookmarks = Bookmarks.all
      expect(bookmarks).to include("https://www.google.com")
      expect(bookmarks).to include("https://www.ford.com")
    end
  end
end
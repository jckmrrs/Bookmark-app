require 'bookmarks'

RSpec.describe Bookmarks do
before [:each] do
  Bookmarks.add("http://www.amazon.co.uk")
end

    describe '.all' do
      it 'returns a list of the bookmarks' do
        expect(Bookmarks.all).to include "http://www.amazon.co.uk"
      end
    end

    describe '.add' do
      it 'Adds a new bookmark to the database' do
        Bookmarks.add("http://www.google.co.uk")
        expect(Bookmarks.all).to include "http://www.google.co.uk"
      end
    end

  # describe '.all' do
  #   it "Returns all of the user's bookmarks" do
  #     Bookmarks.add("http://www.google.com")
  #     bookmarks = Bookmarks.all
  #     expect(bookmarks).to include("http://www.google.com")
  #     Bookmarks.delete("http://www.google.com")
  #   end
  # end
  #
  # describe '.add' do
  #   it 'Adds a new bookmark to the database' do
  #
  #     expect(Bookmarks.add("http://www.google.com")).to eq true
  #     Bookmarks.delete("http://www.google.com")
  #   end
  # end
  #
  # describe '.delete' do
  #   it 'Adds a new bookmark to the database' do
  #     Bookmarks.add("http://www.google.com")
  #     expect(Bookmarks.delete("http://www.google.com")).to eq true
  #   end
  # end


end

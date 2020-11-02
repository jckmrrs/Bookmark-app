class Bookmarks
  @@bookmarks = []
  
  def self.all
    @@bookmarks
  end

  def self.add(link)
    @@bookmarks << link
  end

end


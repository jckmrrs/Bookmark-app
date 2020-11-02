require 'pg'

class Bookmarks
  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add(link)
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{link}');")
    true
  end

  def self.delete(link)
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("DELETE FROM bookmarks WHERE url = '#{link}';")
    true
  end

end


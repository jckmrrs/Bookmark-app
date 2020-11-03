require 'pg'

class Bookmarks

  def self.all
    self.establish_connection
    result = @connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add(link)
    self.establish_connection
    @connection.exec("INSERT INTO bookmarks (url) VALUES ('#{link}');")
  end

  # def self.delete(link)
  #   connection = PG.connect(dbname: 'bookmark_manager')
  #   connection.exec("DELETE FROM bookmarks WHERE url = '#{link}';")
  #   true
  # end

  private
  def self.establish_connection
    if ENV['ENVIRONMENT'] == 'test'
      @connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      @connection = PG.connect(dbname: 'bookmark_manager')
    end
  end

end

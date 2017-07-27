class Article
  attr_accessor :title, :description, :posted_at, :url
  @@all = []

  def self.all
    @@all

  end

  def initialize(title, description, posted_at, url)
    @title = title
    @description = description
    @posted_at = posted_at
    @url = url
    self.class.all << self
  end
  

end

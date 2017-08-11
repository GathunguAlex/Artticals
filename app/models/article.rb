class Article
  attr_accessor :title, :description, :posted_at, :url, :contributor, :category

  @@all = []

  def initialize(article, category)
    @title = article["title"]
    @description = article["description"]
    @posted_at = article["publishedAt"]
    @url = article["url"]
    @contributor = article["contributor"]
    @category = category
    self.class.all << self
  end

  def self.all
    @@all
  end

end

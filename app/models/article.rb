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

#Article.find_all_by_category("Weird")
  def self.find_all_by_category(category)
    Article.all.select do |article|
      article.category.name = category
    end
  end

end

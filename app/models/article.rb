class Article
  attr_accessor :title, :description, :posted_at, :url, :contributor
  @@all = []

  def self.all
    @@all

  end

  def initialize(title, description, posted_at, url, contributor)
    @title = title
    @description = description
    @posted_at = posted_at
    @url = url
    @contributor = contributor
    self.class.all << self
  end


  def self.find_all_by_category(category)
    art_cats = ArticleCategory.all.select { |art_cat| art_cat.category == category }
    art_cats.map(&:article)
  end


end

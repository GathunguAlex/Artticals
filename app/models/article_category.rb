class ArticleCategory
  attr_accessor :article, :category

  @@all = []

  def self.all
    @@all
  end

  def initialize(article, category)
    @article = article
    @category = category
    self.class.all << self
  end

  def self.find_or_create(article, category)
    if !self.all.empty?
      art_cat = self.all.find do |art_cat|
        art_cat.article == article && art_cat.category == category
      end
      art_cat.nil? ? art_cat = ArticleCategory.new(article, category) : art_cat
    else
      art_cat = ArticleCategory.new(article, category)
    end
    art_cat
  end

end

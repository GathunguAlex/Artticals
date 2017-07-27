class NYAdapter
  attr_accessor :articles

  def self.articles
    json = File.read('newyorker.json')
    JSON.parse(json)
  end

  def initialize
    self.articles = self.class.articles
    self.create_objects
  end

  def create_objects
    self.articles.each do |article|
      c_first_name = article["contributor"].split()[0]
      c_last_name = article["contributor"].split()[1]
      contributor = Contributor.find_or_create(c_first_name, c_last_name)

      new_article = Article.new(article["title"], article["description"], article["publishedAt"], article["url"])

      categories = article["category"].split(", ").map do |category|
        cat = Category.find_or_create_by_name(category)
        ArticleCategory.find_or_create(new_article, cat)
      end
    end
  end

end

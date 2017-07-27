class Category
  attr_accessor :name
  @@all = []

  def self.all
    @@all

  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    if !self.all.empty?
      category = self.all.find do |category|
        category.name == name
      end
      category.nil? ? category = Category.new(name) : category
    else
      category = Category.new(name)
    end
    category
  end

  def self.most_articles
    counter_hash = {}
    ArticleCategory.all.each do |art_cat|
      if counter_hash[art_cat.category]
        counter_hash[art_cat.category] += 1
      else
        counter_hash[art_cat.category] = 1
      end
    end
    counter_hash.find do |key, value|
      value == counter_hash.values.max ? key : nil
    end[0]
  end

  def articles
    art_cats = ArticleCategory.all.select { |art_cat| art_cat.category == self }
    art_cats.map(&:article)
  end

  def contributors
    self.articles.map(&:contributor)
  end

  def contributors_in_order
    counter_hash = {}
    self.articles.each do |article|
      if counter_hash[article.contributor]
        counter_hash[article.contributor] += 1
      else
        counter_hash[article.contributor] = 1
      end
    end
    counter_hash.sort_by {|key, value| value}

  end

end

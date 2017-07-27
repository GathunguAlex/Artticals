class Contributor
  attr_accessor :first_name, :last_name

    @@all = []

    def self.all
      @@all
    end

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      self.class.all << self
    end

    def self.find_or_create(first_name, last_name)
      if !self.all.empty?
        contributor = self.all.find do |contributor|
          contributor.first_name == first_name && contributor.last_name == last_name
        end
        contributor.nil? ? contributor = Contributor.new(first_name, last_name) : contributor
      else
        contributor = Contributor.new(first_name, last_name)
      end
      contributor
    end

    def articles
      Article.all.select { |article| article.contributor == self }
    end

    def categories
      art_cats = ArticleCategory.all.select { |art_cat| self.articles.include?(art_cat.article) }
      art_cats.map(&:category).uniq
    end

end

class Author
  attr_reader :name
  #changing from accesor to reader making sure the name cant be changed


  def initialize(name)
    @name = name
  
  end

  def articles
    #This filters from all articles with article .author= self.name
    Article.all.select{|article|
    article.author==@name}
  end

  def magazines 
    #getting magazine instances from articles
    articles.map{|article|article.magazine}.uniq
  end
 def add_article(magazine,title) 
  Article.new(self,magazine,title)
end

def topic_areas
  magazines.collect{|magazine|magazine.category}.uniq
 end


end

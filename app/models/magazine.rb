class Magazine
  attr_accessor :name, :category
#stays accessor so that it can be changed

  @@all=[]
  def initialize(name, category)
    @name = name
    @category = category
    # adding the intialized object to a class all..which is a variable
    @@all << self
  end

  #accessing  'all' using a class method
  def self.all
   @@all
  end
  
  def magazine_articles
  
  Article.all.filter{|article|article.magazine.name==@name}
  end
 
  def magazine_authors 
  magazine_articles.map{|article|article.author}
  end
  
  #This filters articles that match{article|article.magazine.name==true}
  #then .map{||article|article.author.name}.unique
 def contributors
  magazine_authors.uniq

end

def  self.find_by_name(name)
  Magazine.all.find{|magazine|magazine.name==name}
end

def article_titles 
  magazine.articles.map{|article|article.title}

end

def contributing_authors 
  #filtering all authors with more than two articles 
  main_authors =[]
  magazine_articles.tally.each{|key,value|value>2&&(main_authors<<key)}
  main_authors

end

end
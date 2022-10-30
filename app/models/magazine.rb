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

  #This filters articles that match{article|article.magazine.name==true}
  #then .map{||article|article.author.name}.unique
 def contributors
Article.all.filter{|article|article.magazine.name==@name}.map{|article|article.author}.uniq
end


end
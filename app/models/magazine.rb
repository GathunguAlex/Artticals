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
end
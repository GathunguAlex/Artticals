class Magazine
  attr_accessor :name, :category
#stays accessor so that it can be changed

  def initialize(name, category)
    @name = name
    @category = category

  end


end

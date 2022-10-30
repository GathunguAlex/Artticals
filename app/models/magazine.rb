class Magazine
  attr_reader :name, :category
#change from accessor to reader to make sure it cannot be changes

  def initialize(name, category)
    @name = name
    @category = category

  end


end

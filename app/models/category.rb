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

end

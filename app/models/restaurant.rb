class Restaurant
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
      restaurant = self.all.find do |restaurant|
        restaurant.name == name
      end
      restaurant.nil? ? restaurant = Restaurant.new(name) : restaurant
    else
      restaurant = Restaurant.new(name)
    end
    restaurant
  end

end

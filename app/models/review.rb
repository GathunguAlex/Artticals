class Review
  attr_accessor :restaurant, :customer, :content

  @@all = []

  def self.all
    @@all
  end

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    self.class.all << self
  end
  
end

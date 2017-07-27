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

  def reviews
    Review.all.select {|review| review.restaurant == self }
  end

  def self.most_popular
    counter_hash = {}
    self.all.each do |rest|
      counter_hash[rest] = rest.reviews.count
    end
    counter_hash.map do |key, value|
      value == counter_hash.values.max ? key : nil
    end
  end

end

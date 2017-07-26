require 'pry'
require 'json'

class Adapter
  attr_accessor :restaurants

  def self.restaurants
    json = File.read('yelp.json')
    JSON.parse(json)
  end

  def initialize
    @restaurants = self.class.restaurants
  end

  def createCustomers
    self.restaurants.each do |restaurant|
      restaurant["reviews"].each do |review|
        Customer.find_or_create_by_name(review["customer"]["first_name"], review["customer"]["last_name"])
      end
    end
  end

  def createRestaurants
    self.restaurants.each do |restaurant|
      Restaurant.find_or_create_by_name(restaurant["name"])
    end
  end

  def createReviews
    self.restaurants.each do |restaurant|
      restaurant["reviews"].each do |review|
        rest = Restaurant.find_or_create_by_name(restaurant["name"])
        cust = Customer.find_or_create_by_name(review["customer"]["first_name"], review["customer"]["last_name"])
        Review.new(rest, cust, review["content"])
      end
    end
  end

end

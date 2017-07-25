require 'pry'
# require_relative 'yelp.json'
require 'json'


class Adapter
  attr_accessor :restaurants
  def json
    json = File.read('./yelp.json')

  end


  RESTAURANTS = [
    {
      "name": "McDonald's",
      "reviews": [
        {
          "customer": {
            "first_name": "karen",
            "last_name": "louis"
          },
          "content": "The Baddest"
        },
        {
          "customer": {
            "first_name": "bob",
            "last_name": "bobber"
          },
          "content": "Fry Me"
        }
      ]
    },

    {
      "name": "Popeye's",
      "reviews": [
        {
          "customer": {
            "first_name": "karen",
            "last_name": "louis"
          },
          "content": "MMMM!!"
        },
        {
          "customer": {
            "first_name": "bob",
            "last_name": "bobber"
          },
          "content": "More spinach"
        }
      ]
    }
  ]

  def initialize
    @restaurants = RESTAURANTS
  end

  def createCustomers
    self.restaurants.each do |restaurant|
      restaurant[:reviews].each do |review|
        Customer.find_or_create_by_name(review[:customer][:first_name], review[:customer][:last_name])
      end
    end
  end

  def createRestaurants
    self.restaurants.each do |restaurant|
      Restaurant.find_or_create_by_name(restaurant[:name])
    end
  end

  def createReviews
    self.restaurants.each do |restaurant|
      restaurant[:reviews].each do |review|
        rest = Restaurant.find_or_create_by_name(restaurant[:name])
        cust = Customer.find_or_create_by_name(review[:customer][:first_name], review[:customer][:last_name])
        Review.new(rest, cust, review[:content])
      end
    end
  end

end

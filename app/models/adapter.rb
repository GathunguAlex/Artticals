require 'json'


class Adapter
  attr_accessor :restaurants

  def self.json
    json = File.read('yelp.json')
    JSON.parse(json)
  end

  def initialize
    @restaurants = self.class.json
  end

end

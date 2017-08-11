require 'pry'
require 'json'

# Adapter.new('newyorker.json').create_objects_from_file
class Adapter
  attr_accessor :file, :articles

  def initialize(file)
    @file = file
    @articles = self.class.articles(file)
  end

  def self.articles(file)
    JSON.parse(File.read(file))
  end

  def create_objects_from_file
    @articles.each do |article|
      category = Category.find_or_create(article["category"])
      Article.new(article, category)
    end
    puts "instances created!!"
  end

end

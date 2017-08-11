class Category
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

 def self.all
   @@all
 end

def self.find_or_create(name)
  category = self.all.find {|cat| cat.name == name }
  if category
    category
  else
    Category.new(name)
  end
end

def self.top_category
  tracker = count_categories
  highest_count(tracker)
end

private

def self.count_categories
  tracker = {}
    Article.all.each do |art|
      if tracker[art.category.name]
        tracker[art.category.name] += 1
      else
        tracker[art.category.name] = 1
      end
    end
    tracker
end

def self.highest_count(tracker)
  highest = 0
  category = nil
  tracker.each do |cat, count|
    if count >= highest
      highest = count
      category = cat
    end
  end
  {category => highest}
end

end

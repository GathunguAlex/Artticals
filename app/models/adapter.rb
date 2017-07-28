class Adapter
  attr_accessor :articles

  def self.read_articles_from_file(file)
    file_string = File.read(file)
    JSON.parse(file_string)
  end

  def initialize(file)
    @articles = self.class.read_articles_from_file(file)
    self.create_objects
  end

  def create_objects
    # your code here...
  end

end

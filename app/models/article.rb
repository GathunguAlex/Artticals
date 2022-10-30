class Article
    #article cannot change its author,mag,title so we use attr_reader
    attr_reader :magazine, :title
    @@all = []
    def initialize(author,magazine,title)
    @author= author
    @magazine = magazine
    @title = title
    @@all <<self
    end
def self.all
    @@all 
end
def  author
    @author.name
end

end

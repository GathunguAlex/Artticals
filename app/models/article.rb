class Article
    #article cannot change its author,mag,title so we use attr_reader
    attr_reader :author, :magazine, :title

    def initialize(author,magazine,title)
    @author= author
    @magazine = magazine
    @title = title
    end

end

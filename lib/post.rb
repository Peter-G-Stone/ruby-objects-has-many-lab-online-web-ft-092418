class Post
    attr_accessor :title
    attr_reader :author
    @@all = []

    def initialize(title)
        self.title = title
        @@all << self
    end 

    def author=(author)
        @author = author if @author.nil?
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name if self.author
    end 
end     
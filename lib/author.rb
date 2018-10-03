class Author
    @@allposts = []
    attr_accessor :name, :posts

    def initialize(name)
        self.name = name
        self.posts = []
    end 

    def add_post(post)
        self.posts << post if !self.posts.include?(post)
        @@allposts << post
        post.author = self
    end 

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end 

    def self.post_count
        self.allposts.count
    end 

    def self.allposts
        @@allposts
    end 
end     
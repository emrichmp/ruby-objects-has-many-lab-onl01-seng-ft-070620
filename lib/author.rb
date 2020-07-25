class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |posts|
      posts.author == self
    end
  end
  
  def add_post(posts)
    posts.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(posts)
    posts = new.Post(posts, self)
    add_post(posts)
    @@post_count += 1
  end
  
  def self.post_count()
    @@post_count
  end
end
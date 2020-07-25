class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
  end
  
  def songs
    Post.all.select do |a_post|
      a_post.author == self
    end
  end
  
  def add_post(a_post)
    a_post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(a_post)
    a_post = new.Post(a_post, self)
    add_post(a_post)
    @@post_count += 1
  end
  
  def self.post_count()
    @@post_count
  end
end
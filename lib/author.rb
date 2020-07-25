class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
  end
  
  def add_post(a_post)
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(a_post)
    post = new.Post(a_post, self)
    add_post(a_post)
    @@post_count += 1
  end
  
  def self.post_count()
    @@post_count
  end
end